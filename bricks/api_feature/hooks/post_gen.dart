import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final projectRoot = await _findProjectRoot();
  if (projectRoot == null) {
    context.logger.err('Could not find a pubspec.yaml file.');
    return;
  }

  try {
    final buildRunnerSuccess = await _runCommand(
      context,
      'Running build_runner',
      'dart',
      ['run', 'build_runner', 'build', '--delete-conflicting-outputs'],
      projectRoot.path,
    );

    if (!buildRunnerSuccess) {
      return;
    }

    await _runCommand(context, 'Running dart fix --apply', 'dart', [
      'fix',
      '--apply',
    ], Directory.current.path);

    await _runCommand(context, 'Running dart format', 'dart', [
      'format',
      '.',
    ], projectRoot.path);
  } catch (error, stackTrace) {
    context.logger.err('An unexpected error occurred: $error');
    context.logger.err('Stack trace: $stackTrace');
  }
}

Future<Directory?> _findProjectRoot() async {
  var current = Directory.current;
  while (true) {
    final pubspecFile = File('${current.path}/pubspec.yaml');
    if (await pubspecFile.exists()) {
      return current;
    }
    if (current.parent.path == current.path) {
      return null;
    }
    current = current.parent;
  }
}

Future<bool> _runCommand(
  HookContext context,
  String message,
  String command,
  List<String> args,
  String workingDirectory,
) async {
  final progress = context.logger.progress(message);

  try {
    final result = await Process.run(
      command,
      args,
      workingDirectory: workingDirectory,
      runInShell: true,
    );

    if (result.exitCode == 0) {
      progress.complete('$message completed successfully.');
      return true;
    }

    progress.fail('$message failed.');
    context.logger.err('Exit Code: ${result.exitCode}');
    context.logger.err(result.stderr.toString());
  } catch (error, stackTrace) {
    progress.fail('$message failed with an exception.');
    context.logger.err('Error: $error');
    context.logger.err('Stack trace: $stackTrace');
  }

  return false;
}
