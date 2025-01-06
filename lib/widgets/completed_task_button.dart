import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/constants/task_buttons_constants.dart';
import 'package:taskly/constants/task_completed_state_constants.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';

class CompletedTaskButton extends StatelessWidget {
  const CompletedTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: buttonDivider),
      child: FloatingActionButton(
        onPressed: () {
          context.read<TaskScreenBloc>().add(FilterTasksEvent(filter: completed));
        },
        backgroundColor: const Color(0xFFB2DFDB),
        child: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
      ),
    );
  }
}
