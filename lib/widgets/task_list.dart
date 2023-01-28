import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  const TaskList({super.key, this.tasks = const []});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks.reversed.map((task) {
        return TaskItem(task: task);
      }).toList(),
    );
  }
}
