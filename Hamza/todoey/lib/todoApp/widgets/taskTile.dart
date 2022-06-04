import 'package:flutter/material.dart';
import 'package:todoey/todoApp/models/tasksData.dart';
import 'package:todoey/todoApp/widgets/todoItem.dart';
import 'package:provider/provider.dart';
import '../models/todoModel.dart';

class taskTile extends StatelessWidget {
  const taskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return todoItem(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkCallback: () {
              taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
