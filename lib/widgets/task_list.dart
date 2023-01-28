import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({super.key, this.tasks = const []});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.tasks.reversed.map((task) {
        return TaskItem(
          task: task,
          onRemove: (task) {
            setState(() {
              widget.tasks.removeWhere((element) {
                return element.id == task.id;
              });
            });
          },
        );
      }).toList(),
    );
  }
}
