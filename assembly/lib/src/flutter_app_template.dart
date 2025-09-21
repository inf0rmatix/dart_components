import 'dart:convert';
import 'dart:io';

import 'package:mason_logger/mason_logger.dart';

class FlutterAppPackage {
  final _logger = Logger();
  final buildDir = 'build';

  Future<void> build(List<String> args) async {
    _logger.info('Building Flutter App Template...');

    final projectName = await _getProjectName(args);
    final snakeCaseProjectName = _snakeCase(projectName);
    final destDir = '$buildDir/$snakeCaseProjectName';

    final creatingBuildDirProgress = _logger.progress(
      '📁 Creating build directory...',
    );

    await Directory(destDir).create(recursive: true);
    creatingBuildDirProgress.complete();

    // - create a directory apps
    final appsDir = '$destDir/apps';
    await Directory(appsDir).create(recursive: true);

    // - in the apps dir, run flutter create with the empty flag for that name (in snake_case)
    final flutterCreateProgress = _logger.progress(
      '🚀 Creating Flutter app...',
    );

    final flutterProcess = await Process.run(
      'flutter',
      [
        'create',
        '--empty',
        snakeCaseProjectName,
      ],
      workingDirectory: appsDir,
    );

    if (flutterProcess.exitCode != 0) {
      _logger.err('❌ Failed to create flutter app');
      _logger.err(flutterProcess.stderr);
      exit(1);
    }

    flutterCreateProgress.complete();

    // Read the app's pubspec.yaml to get the SDK constraint
    final appPubspecPath = '$destDir/apps/$snakeCaseProjectName/pubspec.yaml';
    final appPubspecFile = File(appPubspecPath);
    final appPubspecContent = await appPubspecFile.readAsString();
    final sdkConstraintLine = RegExp(
      r"sdk:\s*('.*'|"
      ".*"
      ")",
    ).firstMatch(appPubspecContent)?.group(0);

    if (sdkConstraintLine == null) {
      _logger.err('❌ Could not find SDK constraint in $appPubspecPath');
      exit(1);
    }

    // - create a directory packages
    final packagesDir = '$destDir/packages';
    await Directory(packagesDir).create(recursive: true);

    // - in packages create an empty dart package with the name project_name_api
    final dartPackageProgress = _logger.progress('📦 Creating API package...');
    final dartProcess = await Process.run(
      'dart',
      [
        'create',
        '--template=package',
        '${snakeCaseProjectName}_api',
      ],
      workingDirectory: packagesDir,
    );

    if (dartProcess.exitCode != 0) {
      _logger.err('❌ Failed to create dart package');
      _logger.err(dartProcess.stderr);
      exit(1);
    }

    dartPackageProgress.complete();

    final pubspecProgress = _logger.progress(
      '📝 Configuring workspace pubspecs...',
    );
    await _createRootPubspec(destDir, snakeCaseProjectName, sdkConstraintLine);
    await _addWorkspaceResolution(
      '$destDir/apps/$snakeCaseProjectName/pubspec.yaml',
    );
    await _addWorkspaceResolution(
      '$destDir/packages/${snakeCaseProjectName}_api/pubspec.yaml',
    );
    pubspecProgress.complete();

    _logger.success('✅ Build complete! Output at $destDir');
  }

  Future<void> _createRootPubspec(
    String destDir,
    String snakeCaseProjectName,
    String sdkConstraint,
  ) async {
    final content = '''
name: ${snakeCaseProjectName}_workspace
description: A workspace for $snakeCaseProjectName.
publish_to: none

environment:
  $sdkConstraint

workspace:
  - apps/$snakeCaseProjectName
  - packages/${snakeCaseProjectName}_api
''';
    await File('$destDir/pubspec.yaml').writeAsString(content);
  }

  Future<void> _addWorkspaceResolution(String path) async {
    final pubspec = File(path);
    if (await pubspec.exists()) {
      final content = await pubspec.readAsString();
      if (!content.contains('resolution: workspace')) {
        await pubspec.writeAsString(
          '$content\nresolution: workspace\n',
        );
      }
    }
  }

  Future<String> _getProjectName(List<String> args) async {
    final argProjectName = args.firstWhere(
      (arg) => arg.startsWith('NAME='),
      orElse: () => '',
    );

    final projectName =
        argProjectName.isNotEmpty
            ? argProjectName.split('=').last
            : _prompt('Enter project name (e.g., "My App")');

    if (projectName.trim().isEmpty) {
      _logger.err('❌ Please provide a non-empty project name');
      exit(1);
    }

    return projectName.trim();
  }

  String _prompt(String message) {
    stdout.write('$message: ');
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  String _snakeCase(String input) {
    return input.toLowerCase().replaceAll(' ', '_');
  }
}
