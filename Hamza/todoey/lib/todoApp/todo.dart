import 'package:flutter/material.dart';
import 'package:todoey/todoApp/models/tasksData.dart';
import 'package:todoey/todoApp/widgets/addTask.dart';
import 'package:todoey/todoApp/widgets/taskTile.dart';
import 'package:provider/provider.dart';

import 'models/todoModel.dart';

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const addTaskScreen(),
                  )));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 40, bottom: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      Icons.list_outlined,
                      size: 35,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "TODOEY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${Provider.of<TaskData>(context).taskCount} Tasks",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: taskTile(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
