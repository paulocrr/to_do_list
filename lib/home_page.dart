import 'package:flutter/material.dart';
import 'package:to_do_list/language/to_do_list_texts.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/widgets/add_task_form.dart';
import 'package:to_do_list/widgets/task_list.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tasks = [
    Task(id: const Uuid().v1(), title: 'Tarea 1', date: DateTime.now()),
    Task(id: const Uuid().v1(), title: 'Tarea 2', date: DateTime.now()),
    Task(id: const Uuid().v1(), title: 'Tarea 3', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(ToDoListTexts.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: AddTaskForm(
                onSave: (taskTitle) {
                  final newTask = Task(
                    id: const Uuid().v1(),
                    title: taskTitle,
                    date: DateTime.now(),
                  );
                  setState(() {
                    tasks.add(newTask);
                  });
                },
              ),
            ),
            Expanded(
              flex: 4,
              child: TaskList(
                tasks: tasks,
              ),
            )
          ],
        ),
      ),
    );
  }
}
