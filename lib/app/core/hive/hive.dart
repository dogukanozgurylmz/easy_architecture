import 'package:easy_architecture/app/data/models/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<TodoModel> todoBox;

Future<void> hiveInit() async {
  await Hive.initFlutter();
  hiveRegisterAdapter();
  await hiveBox();
}

Future<void> hiveBox() async {
  todoBox = await Hive.openBox<TodoModel>('todos');
}

void hiveRegisterAdapter() {
  Hive.registerAdapter<TodoModel>(TodoModelAdapter());
}
