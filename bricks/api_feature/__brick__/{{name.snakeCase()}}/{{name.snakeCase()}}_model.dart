import 'package:dart_mappable/dart_mappable.dart';

import '../common/model.dart';

part '{{name.snakeCase()}}_model.mapper.dart';

@MappableClass()
class {{name.pascalCase()}} extends Model with {{name.pascalCase()}}Mappable {
  const {{name.pascalCase()}}({
    required super.id,
    required super.createdAt,
    required super.updatedAt,
  });

  {{name.pascalCase()}}.create(): super(
    id: '',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
}