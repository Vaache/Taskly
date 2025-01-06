import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/models/Task.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';
import 'package:taskly/widgets/delete_task_button.dart';
import 'package:taskly/widgets/set_task_completed_button.dart';

class TaskList extends StatelessWidget {
  final Task task;
  const TaskList({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskScreenBloc, TaskScreenState>(
      builder: (context, state) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${task.name}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${task.title}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (task.isCompleted)
                          const Text(
                            'Task Completed',
                            style: TextStyle(fontSize: 12, color: Colors.green),
                          )
                        else ...[
                          SetTaskCompletedButton(task: task),
                          DeleteTaskButton(task: task),
                        ]
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
