import 'package:easy_architecture/app/core/result/result.dart';
import 'package:easy_architecture/app/data/models/todo_model.dart';

abstract class TodoRepository {
  Future<DataResult<List<TodoModel>>> getAll();
}
