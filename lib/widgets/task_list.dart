import 'package:flutter/material.dart';
import 'package:taskly/models/Task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Task> list = List.generate(
        10,
        (index) =>
            Task(name: "task ${index + 1}", title: 'title ${index + 1}'));

    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          const SizedBox(
            height: 20,
          );
          return Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 217, 247, 244),
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text(list[index].name!),
                      subtitle: Text(list[index].title!),
                    ))),
          );
        });
  }
}
