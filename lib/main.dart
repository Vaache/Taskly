import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';
import 'package:taskly/screens/task_screen.dart';
import 'package:taskly/widgets/circular_app_bar.dart';
import 'package:taskly/widgets/task_fap.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => TaskScreenBloc(),
    child: const Taskly(),
  ));
}

class Taskly extends StatelessWidget {
  const Taskly({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFB2DFDB),
        appBar:
            CircularAppBar(),
        body: TaskScreen(),
        floatingActionButton: TaskFAP(),
      ),
    );
  }
}
