import 'package:assembly/assembly.dart';

Future<void> main(List<String> arguments) async {
  final designPackage = DesignPackage();

  await designPackage.build(arguments);
}
