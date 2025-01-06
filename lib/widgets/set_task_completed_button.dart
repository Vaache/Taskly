import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/models/Task.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';

class SetTaskCompletedButton extends StatelessWidget {
  final Task task;

  const SetTaskCompletedButton({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context
            .read<TaskScreenBloc>()
            .add(ToggleTaskStatusEvent(task: task, status: true));
      },
      icon: const Icon(
        Icons.check,
        color: Colors.green,
      ),
    );
  }
}
