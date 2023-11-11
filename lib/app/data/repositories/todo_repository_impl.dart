import 'package:easy_architecture/app/core/result/result.dart';
import 'package:easy_architecture/app/data/datasources/local/todo_local_datasource_impl.dart';
import 'package:easy_architecture/app/data/datasources/remote/todo_remote_datasource.dart';
import 'package:easy_architecture/app/data/models/todo_model.dart';
import 'package:easy_architecture/app/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDatasourceImpl todoLocalDatasource;
  final TodoRemoteDatasourceImpl todoRemoteDatasource;

  TodoRepositoryImpl(
      {required this.todoLocalDatasource, required this.todoRemoteDatasource});

  @override
  Future<DataResult<List<TodoModel>>> getAll() async {
    try {
      List<TodoModel> todos = await todoLocalDatasource.getAll();
      if (todos.isNotEmpty) {
        return SuccessDataResult(data: todos);
      }
      todos = await todoRemoteDatasource.getAll();
      await todoLocalDatasource.save(todos);
      return SuccessDataResult(data: todos);
    } catch (e) {
      return ErrorDataResult(message: e.toString());
    }
  }
}
