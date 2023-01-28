import 'package:flutter/material.dart';
import 'package:to_do_list/language/to_do_list_texts.dart';
import 'package:to_do_list/widgets/add_task_form.dart';
import 'package:to_do_list/widgets/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          children: const [
            Expanded(
              child: AddTaskForm(),
            ),
            Expanded(
              flex: 4,
              child: TaskList(),
            )
          ],
        ),
      ),
    );
  }
}
