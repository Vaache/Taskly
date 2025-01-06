import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/constants/task_buttons_constants.dart';
import 'package:taskly/constants/task_completed_state_constants.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';

class TaskNotCompletedButton extends StatelessWidget {
  const TaskNotCompletedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: buttonDivider),
      child: FloatingActionButton(
        onPressed: () {
          context
              .read<TaskScreenBloc>()
              .add(FilterTasksEvent(filter: notCompleted));
        },
        backgroundColor: const Color(0xFFB2DFDB),
        child: const Icon(Icons.radio_button_unchecked, color: Colors.red),
      ),
    );
  }
}
