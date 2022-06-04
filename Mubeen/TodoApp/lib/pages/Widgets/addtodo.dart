import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/todo.dart';
import 'package:todoapp/pages/Widgets/TodoFormWidget.dart';
import 'package:todoapp/provider/todos.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final _formkey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) => AlertDialog(
    content: Form(
      key: _formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Add Todo", style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(height: 8,),
          TodoFormWidget(
            onSave: addTodo,
            onChangeDesc: (description) { setState( () => this.description = description ); },
            onChangeTitle: (title) { setState( () => this.title = title ); },
          )
        ],
      ),
    ),
  );
  void addTodo() {
    final isvalid = _formkey.currentState?.validate();
    if(!isvalid!){
      return;
    }
    else{
      final todo = Todo(
          id: DateTime.now().toString(),
          title: title,
          description: description,
          createdTime: DateTime.now(),
      );
      final provider = Provider.of<TodoProvider>(context, listen: false);
      provider.addTodo(todo);
      Navigator.of(context).pop();
    }
  }
}
