import 'package:flutter/cupertino.dart';
import 'package:todoapp/model/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Food 😋',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Norway',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the Dog 🐕',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan Jacobs birthday',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make"
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  void addTodo(Todo todo){
    _todos.add(todo);
    notifyListeners();
  }
  void removeTodo(Todo todo){
    _todos.remove(todo);
    notifyListeners();
  }
}
