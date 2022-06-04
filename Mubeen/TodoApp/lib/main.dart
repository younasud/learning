import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/pages/TodoScreen.dart';
import 'package:todoapp/provider/todos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TodoScreen()
      ),
    );
  }
}


