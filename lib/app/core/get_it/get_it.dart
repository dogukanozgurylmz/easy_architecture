import 'package:easy_architecture/app/data/datasources/local/todo_local_datasource_impl.dart';
import 'package:easy_architecture/app/data/datasources/remote/todo_remote_datasource.dart';
import 'package:easy_architecture/app/data/repositories/todo_repository_impl.dart';
import 'package:easy_architecture/app/domain/repositories/todo_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupRepositories();
  setupDatasource();
  setupBLoC();
}

void setupRepositories() {
  getIt.registerLazySingleton<TodoRepository>(
    () => TodoRepositoryImpl(
      todoLocalDatasource: getIt(),
      todoRemoteDatasource: getIt(),
    ),
  );
}

void setupDatasource() {
  getIt.registerLazySingleton<TodoLocalDatasourceImpl>(
    () => TodoLocalDatasourceImpl(),
  );
  getIt.registerLazySingleton<TodoRemoteDatasourceImpl>(
    () => TodoRemoteDatasourceImpl(),
  );
}

void setupBLoC() {
  // getIt.registerLazySingleton<RoomAdminCubit>(() => RoomAdminCubit(
  //       eventColorRepository: getIt(),
  //     ));
}
