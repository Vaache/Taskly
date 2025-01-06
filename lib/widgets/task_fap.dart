import 'package:flutter/material.dart';
import 'package:taskly/widgets/all_task_button.dart';
import 'package:taskly/widgets/completed_task_button.dart';
import 'package:taskly/widgets/task_not_completed_button.dart';

class TaskFAP extends StatelessWidget {
  const TaskFAP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AllTaskButton(),
            CompletedTaskButton(),
            TaskNotCompletedButton(),
          ],
        ));
  }
}
