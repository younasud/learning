import 'package:flutter/material.dart';
import 'package:todoapp/pages/Widgets/TodoList.dart';
import 'package:todoapp/pages/Widgets/addtodo.dart';
class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Todo App')),
        ),
        body: const TodoListWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog(context: context, builder: (context) => const AddTodo()),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
      );
  }
}
