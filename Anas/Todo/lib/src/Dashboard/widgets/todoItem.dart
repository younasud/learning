import 'package:flutter/material.dart';

import '../../../model/todoModel.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(widget.todo.title),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
        ),
      ),
    );
  }
}
