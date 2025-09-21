import 'dart:io';

import 'package:assembly/assembly.dart';
import 'package:mason_logger/mason_logger.dart';

void main(List<String> args) {
  final logger = Logger();

  if (args.isEmpty) {
    logger.err('Please specify a builder: design_package or flutter_app');
    exit(1);
  }

  final builderType = args.first;
  final builderArgs = args.sublist(1);

  switch (builderType) {
    case 'design_package':
      DesignPackage().build(builderArgs);
    case 'flutter_app':
      FlutterAppPackage().build(builderArgs);
    default:
      logger.err('Unknown builder: $builderType');
      logger.info('Available builders: design_package, flutter_app');
      exit(1);
  }
}
