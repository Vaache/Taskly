import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/models/Task.dart';
import 'package:taskly/screens/bloc/task_screen_bloc.dart';

class CircularAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CircularAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFB2DFDB),
      title: const Center(
          child: Text(
        "Your tasks",
        style: TextStyle(color: Colors.black, fontSize: 24),
      )),
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Container(
          color: const Color(0xFF00796B),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    final taskNameController = TextEditingController();
                    final taskTitleController = TextEditingController();

                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: AlertDialog(
                        title: const Text("Enter Task name"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: taskNameController,
                              decoration: const InputDecoration(
                                labelText: 'Task name',
                              ),
                              onSubmitted: (value) {
                                Navigator.of(context).pop();
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: taskTitleController,
                              decoration: const InputDecoration(
                                labelText: 'Task title',
                              ),
                              onSubmitted: (value) {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          BlocBuilder<TaskScreenBloc, TaskScreenState>(
                            builder: (context, state) {
                              return TextButton(
                                  onPressed: () {
                                    final taskName = taskNameController.text;
                                    final taskTitle = taskTitleController.text;

                                    if (taskName.isNotEmpty &&
                                        taskTitle.isNotEmpty) {
                                      final task = Task(
                                          name: taskName, title: taskTitle);
                                      context
                                          .read<TaskScreenBloc>()
                                          .add(AddTaskEvent(task: task));
                                      Navigator.of(context).pop();
                                    }
                                  },
                                  child: const Text('Add'));
                            },
                          )
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
