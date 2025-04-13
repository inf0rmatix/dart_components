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
    final capPrefix = _capitalize(prefix);

    _logger.info('📁 Creating build directory...');
    await Directory(buildDir).create(recursive: true);
    await _copyDirectory(Directory(srcDir), Directory(destDir));

    _logger.info('🔤 Renaming files and directories...');
    await _renamePaths(destDir, 'custom_', '${prefix}_');

    _logger.info('📝 Replacing contents in files...');
    await _replaceInFiles(destDir, prefix, capPrefix);

    final pubspec = File('$destDir/pubspec.yaml');
    if (await pubspec.exists()) {
      _logger.info('📦 Updating pubspec.yaml...');
      final content = await pubspec.readAsString();
      await pubspec.writeAsString(
        content.replaceAll('name: custom_design', 'name: ${prefix}_design'),
      );
    }

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

    return prefix.trim();
  }

  String _prompt(String message) {
    stdout.write('$message: ');
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  String _capitalize(String input) =>
      input[0].toUpperCase() + input.substring(1);

  Future<void> _copyDirectory(Directory source, Directory destination) async {
    if (!await destination.exists()) {
      await destination.create(recursive: true);
    }

    await for (final entity in source.list(recursive: false)) {
      final newPath = '${destination.path}/${entity.uri.pathSegments.last}';
      if (entity is File) {
        await entity.copy(newPath);
      } else if (entity is Directory) {
        await _copyDirectory(entity, Directory(newPath));
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
