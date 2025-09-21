import '{{name.snakeCase()}}_repository.dart';
import '{{name.snakeCase()}}_model.dart';


class {{name.pascalCase()}}Service {
  final {{name.pascalCase()}}Repository _repository;

  {{name.pascalCase()}}Service(this._repository);

  Future<{{name.pascalCase()}}> create({{name.pascalCase()}} {{name.snakeCase()}}) async {
    return _repository.create({{name.snakeCase()}});
  }

  Future<List<{{name.pascalCase()}}>> readAll() async {
    return _repository.readAll();
  }

  Future<{{name.pascalCase()}}?> readById(String id) async {
    return _repository.readById(id);
  }
  
  Future<{{name.pascalCase()}}> update({{name.pascalCase()}} {{name.snakeCase()}}) async {
    return _repository.update({{name.snakeCase()}});
  }

  Future<void> delete({{name.pascalCase()}} {{name.snakeCase()}}) async {
    return _repository.delete({{name.snakeCase()}});
  }
}