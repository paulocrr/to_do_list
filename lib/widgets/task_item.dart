import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/models/task.dart';

class TaskItem extends StatefulWidget {
  final Function(Task)? onRemove;
  final Task task;

  const TaskItem({
    super.key,
    required this.task,
    this.onRemove,
  });

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: widget.task.isDone,
          onChanged: (value) {
            setState(() {
              widget.task.isDone = value ?? false;
            });
          },
        ),
        title: Text(
          widget.task.title,
          style: TextStyle(
            decoration: widget.task.isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        subtitle: Text(DateFormat('dd-MM-yyyy').format(widget.task.date)),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            final removeAction = widget.onRemove;

            if (removeAction != null) {
              removeAction(widget.task);
            }
          },
        ),
      ),
    );
  }
}
