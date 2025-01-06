import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/models/Task.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';

class DeleteTaskButton extends StatelessWidget {
  final Task task;

  const DeleteTaskButton({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.read<TaskScreenBloc>().add(DeleteTaskEvent(task: task));
        },
        icon: const Icon(
          Icons.close,
          color: Colors.red,
        ));
  }
}
