import 'package:flutter/material.dart';
import 'package:todoey/todoApp/models/tasksData.dart';
import 'package:todoey/todoApp/todo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: Todoey(),
      ),
    );
  }
}
