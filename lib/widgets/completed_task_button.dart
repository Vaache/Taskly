import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taskly/constants/task_buttons_constants.dart';

class CompletedTaskButton extends StatelessWidget {
  const CompletedTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: buttonDivider),
      child: FloatingActionButton(
        onPressed: () {
          log('Pressed FAP completed');
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
