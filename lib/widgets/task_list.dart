import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskItem(
          title: "Tarea 1",
          date: DateTime.now(),
        ),
        TaskItem(
          title: "Tarea 2",
          date: DateTime.now(),
        ),
      ],
    );
  }
}
