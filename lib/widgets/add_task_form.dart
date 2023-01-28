import 'package:flutter/material.dart';
import 'package:to_do_list/language/to_do_list_texts.dart';

class AddTaskForm extends StatefulWidget {
  final Function(String) onSave;
  const AddTaskForm({super.key, required this.onSave});

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  var taskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                taskTitle = value;
              });
            },
            decoration: InputDecoration(
              hintText: ToDoListTexts.taskInputTextHint,
              border: const OutlineInputBorder(),
              label: Text(ToDoListTexts.taskInputTextLabel),
            ),
          ),
          ElevatedButton.icon(
            onPressed: taskTitle.isNotEmpty
                ? () {
                    widget.onSave(taskTitle);
                  }
                : null,
            icon: const Icon(Icons.add),
            label: Text(ToDoListTexts.addTaskButtonLabel),
          )
        ],
      ),
    );
  }
}
