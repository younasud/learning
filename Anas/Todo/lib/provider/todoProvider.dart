import 'package:flutter/cupertino.dart';
import '../model/todoModel.dart';

class todoPrvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Bread',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Go to Saloon',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Go to vet ',
    ),
  ];

  List<Todo> get todos => _todos.toList();

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
