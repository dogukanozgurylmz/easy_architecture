import 'dart:developer';
import 'package:easy_architecture/app/core/enums/app_padding.dart';
import 'package:easy_architecture/app/core/enums/app_radius.dart';
import 'package:easy_architecture/app/core/enums/space.dart';
import 'package:easy_architecture/app/core/get_it/get_it.dart';
import 'package:easy_architecture/app/core/hive/hive.dart';
import 'package:easy_architecture/app/core/widgets/buttons/app_button.dart';
import 'package:easy_architecture/app/core/widgets/nonetwork/no_network.dart';
import 'package:easy_architecture/app/data/repositories/todo_repository_impl.dart';
import 'package:easy_architecture/app/domain/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await hiveInit();
  setupGetIT();
  TodoRepository todoRepository = TodoRepositoryImpl(
      todoLocalDatasource: getIt(), todoRemoteDatasource: getIt());
  var dataResult = await todoRepository.getAll();

  if (dataResult.success) {
    log(dataResult.data.toString());
  } else {
    log(dataResult.message!);
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Column(
          children: [
            Expanded(child: child ?? const SizedBox.shrink()),
            const NoNetwork(),
          ],
        );
      },
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const Text('Hello World!'),
              SpaceHeight.m.value,
              const Text('Hello World!'),
              SpaceHeight.m.value,
              Container(
                padding: AppPaddingAll.xl.value,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(AppRadius.m.value),
                ),
              ),
              SpaceHeight.m.value,
              AppButton.small(
                text: "Small Button",
                onPressed: () {},
                backgroundColor: Colors.amber,
              ),
              SpaceHeight.m.value,
              AppButton.medium(
                text: "Medium Button",
                onPressed: () {},
                backgroundColor: Colors.amber,
              ),
              SpaceHeight.m.value,
              AppButton.large(
                text: "Large Button",
                onPressed: () {},
                backgroundColor: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
