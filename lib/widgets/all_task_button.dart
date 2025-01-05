import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taskly/constants/task_buttons_constants.dart';

class AllTaskButton extends StatelessWidget {
  const AllTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: buttonDivider),
      child: FloatingActionButton(
        onPressed: () {
          log('Pressed FAP all');
        },
        backgroundColor: const Color(0xFFB2DFDB),
        child: const Icon(Icons.list,),
      ),
    );
  }
}
