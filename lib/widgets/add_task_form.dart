import 'package:flutter/material.dart';
import 'package:to_do_list/language/to_do_list_texts.dart';

class AddTaskForm extends StatelessWidget {
  final Function(String) onSave;
  const AddTaskForm({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    var taskTitle = "";

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              taskTitle = value;
            },
            decoration: InputDecoration(
              hintText: ToDoListTexts.taskInputTextHint,
              border: const OutlineInputBorder(),
              label: Text(ToDoListTexts.taskInputTextLabel),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              onSave(taskTitle);
            },
            icon: const Icon(Icons.add),
            label: Text(ToDoListTexts.addTaskButtonLabel),
          )
        ],
      ),
    );
  }
}
