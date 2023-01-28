import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final DateTime date;
  const TaskItem({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        title: Text(title),
        subtitle: Text(DateFormat('dd-MM-yyyy').format(date)),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
