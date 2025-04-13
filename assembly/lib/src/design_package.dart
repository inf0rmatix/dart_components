import 'dart:convert';
import 'dart:io';

import 'package:mason_logger/mason_logger.dart';

class DesignPackage {
  final _logger = Logger();
  final srcDir = 'flutter_design_system_template/custom_design';
  final buildDir = 'build';

  Future<void> build(List<String> args) async {
    _logger.info('📍 Current working directory: ${Directory.current.path}');

    final prefix = await _getPrefix(args);
    final destDir = '$buildDir/${prefix}_design';
    final camelCasePrefix = _camelCase(prefix);

    final creatingBuildDirProgress = _logger.progress(
      '📁 Creating build directory...',
    );
    await Directory(buildDir).create(recursive: true);
    creatingBuildDirProgress.complete();

    final copyingProgress = _logger.progress('📋 Copying files...');
    await _copyDirectory(Directory(srcDir), Directory(destDir));
    copyingProgress.complete();

    final renamingProgress = _logger.progress(
      '🔤 Renaming files and directories...',
    );
    await _renamePaths(destDir, 'custom_', '${prefix}_');
    renamingProgress.complete();

    final replacingProgress = _logger.progress(
      '📝 Replacing prefix in files...',
    );
    await _replaceInFiles(destDir, prefix, camelCasePrefix);
    replacingProgress.complete();

    final pubspecProgress = _logger.progress('📦 Updating pubspec.yaml...');

    final pubspec = File('$destDir/pubspec.yaml');
    if (await pubspec.exists()) {
      final content = await pubspec.readAsString();
      await pubspec.writeAsString(
        content.replaceAll('name: custom_design', 'name: ${prefix}_design'),
      );
    }

    pubspecProgress.complete();

    _logger.success('✅ Build complete! Output at $destDir');
  }

  Future<String> _getPrefix(List<String> args) async {
    final argPrefix = args.firstWhere(
      (arg) => arg.startsWith('PREFIX='),
      orElse: () => '',
    );

    final prefix =
        argPrefix.isNotEmpty
            ? argPrefix.split('=').last
            : _prompt('Enter desired prefix (e.g., "Custom")');

    if (prefix.trim().isEmpty) {
      _logger.err('❌ Please provide a non-empty prefix');
      exit(1);
    }

    return prefix.trim().toLowerCase().replaceAll(' ', '_');
  }

  String _prompt(String message) {
    stdout.write('$message: ');
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  String _camelCase(String input) =>
      input
          .split('_')
          .map((word) => word.substring(0, 1).toUpperCase() + word.substring(1))
          .join();

  Future<void> _copyDirectory(Directory source, Directory destination) async {
    if (!await destination.exists()) {
      await destination.create(recursive: true);
    }

    await for (final entity in source.list(recursive: true)) {
      final relativePath = entity.path.substring(source.path.length + 1);
      final newPath = '${destination.path}/$relativePath';

      if (entity is File) {
        await File(entity.path).copy(newPath);
      } else if (entity is Directory) {
        await Directory(newPath).create(recursive: true);
      }
    }
  }

  Future<void> _renamePaths(String dirPath, String from, String to) async {
    final entries = await Directory(dirPath).list(recursive: true).toList();
    // Sort by path length descending to rename inner files first
    entries.sort((a, b) => b.path.length.compareTo(a.path.length));

    for (final entity in entries) {
      final newPath = entity.path.replaceAll(from, to);
      if (newPath != entity.path) {
        await entity.rename(newPath);
      }
    }
  }

  Future<void> _replaceInFiles(
    String dirPath,
    String prefix,
    String capPrefix,
  ) async {
    final files =
        await Directory(
          dirPath,
        ).list(recursive: true).where((e) => e is File).cast<File>().toList();

    for (final file in files) {
      var content = await file.readAsString();
      content = content
          .replaceAll('CustomDesign', '${capPrefix}Design')
          .replaceAll('Custom', capPrefix)
          .replaceAll('custom_design', '${prefix}_design')
          .replaceAll('package:custom_design', 'package:${prefix}_design')
          .replaceAll("src/custom_", "src/${prefix}_")
          .replaceAll("'custom_", "'${prefix}_")
          .replaceAll('"custom_', '"${prefix}_')
          .replaceAllMapped(
            RegExp(r"export '([^']*)custom_"),
            (m) => "export '${m[1]}${prefix}_",
          )
          .replaceAllMapped(
            RegExp(r'export "([^"]*)custom_'),
            (m) => 'export "${m[1]}${prefix}_',
          );

      await file.writeAsString(content);
    }
  }
}
