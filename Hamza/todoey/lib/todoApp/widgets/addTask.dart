import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/todoApp/models/tasksData.dart';
import '../models/todoModel.dart';

class addTaskScreen extends StatelessWidget {
  const addTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskText = "null";
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskText = newText;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskText);
                  Navigator.pop(context);
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
