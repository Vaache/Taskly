import 'package:flutter/material.dart';
import 'package:taskly/widgets/all_task_button.dart';
import 'package:taskly/widgets/circular_app_bar.dart';
import 'package:taskly/widgets/completed_task_button.dart';
import 'package:taskly/widgets/task_list.dart';
import 'package:taskly/widgets/task_not_completed_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFB2DFDB),
      appBar: CircularAppBar(),
      body: TaskList(),
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AllTaskButton(),
              CompletedTaskButton(),
              TaskNotCompletedButton(),
            ],
          )),
    ));
  }
}
