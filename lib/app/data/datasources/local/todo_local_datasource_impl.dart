import 'package:easy_architecture/app/core/hive/hive.dart';
import 'package:easy_architecture/app/data/models/todo_model.dart';
import 'package:easy_architecture/app/domain/datasources/todo_datasource.dart';

class TodoLocalDatasourceImpl implements TodoDatasource {
  @override
  Future<List<TodoModel>> getAll() async {
    return [];
  }

  @override
  Future save(List<TodoModel> todos) async {
    return await todoBox.addAll(todos);
  }
}
