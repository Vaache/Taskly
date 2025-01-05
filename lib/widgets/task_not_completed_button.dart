import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taskly/constants/task_buttons_constants.dart';

class TaskNotCompletedButton extends StatelessWidget {
  const TaskNotCompletedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: buttonDivider),
      child: FloatingActionButton(
        onPressed: () {
          log('Pressed FAP not completed');
        },
        backgroundColor: const Color(0xFFB2DFDB),
        child: const Icon(Icons.radio_button_unchecked, color: Colors.red),
      ),
    );
  }
}
