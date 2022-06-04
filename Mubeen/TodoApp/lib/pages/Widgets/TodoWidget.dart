import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/todo.dart';
import 'package:todoapp/provider/todos.dart';
import 'package:todoapp/resources/utils.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({Key? key, required this.todo}) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Slidable(
          key: Key(todo.id),
          startActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                },
                backgroundColor: Colors.green,
                icon: Icons.mode_edit,
                label: 'Edit',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => {
                  deleteTodo(context,todo)
                },
                backgroundColor: Colors.red,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: buildTodo(context),
      ),
  );

  Widget buildTodo(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    color: Colors.white,
    child: Row(
      children: [
        Checkbox(
          activeColor: Colors.black,
          checkColor: Colors.white,
          value: todo.isDone,
          onChanged: (_){},
        ),
        const SizedBox(width: 20,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todo.title, style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),
            ),
            if(todo.description.isNotEmpty)
              Container(
                margin: const EdgeInsets.only(top: 4),
                child: Text(todo.description,
                  style: const TextStyle(fontSize: 20, height: 1.5),
                ),

              ),
          ],
        ))
      ],
    ),
  );

  void deleteTodo(BuildContext context, Todo todo){
    final provider = Provider.of<TodoProvider>(context, listen: false);
    provider.removeTodo(todo);

    Utils.showSnackerBar(context, 'Todo Deleted');
  }
}
