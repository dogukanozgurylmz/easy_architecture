import 'package:easy_architecture/app/data/models/todo_model.dart';

abstract class TodoDatasource {
  Future<List<TodoModel>> getAll();
  Future save(List<TodoModel> todos);
}
