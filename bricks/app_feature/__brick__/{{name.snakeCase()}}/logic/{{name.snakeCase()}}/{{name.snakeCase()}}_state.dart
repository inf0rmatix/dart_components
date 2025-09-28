
import 'package:dart_mappable/dart_mappable.dart';

part '{{name.snakeCase()}}_state.mapper.dart';

@MappableClass()
class {{name.pascalCase()}}State with {{name.pascalCase()}}StateMappable {
  const {{name.pascalCase()}}State();
}