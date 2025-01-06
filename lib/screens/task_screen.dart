import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';
import 'package:taskly/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskScreenBloc, TaskScreenState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state.filteredTasks.length,
            itemBuilder: (context, index) {
              const SizedBox(
                height: 20,
              );
              return TaskList(
                task: state.filteredTasks[index],
              );
            });
      },
    );
  }
}
