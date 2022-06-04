import 'package:flutter/foundation.dart';
import 'package:todoey/todoApp/models/todoModel.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruits'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
