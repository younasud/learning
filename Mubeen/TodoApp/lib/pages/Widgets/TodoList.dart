import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/pages/Widgets/TodoWidget.dart';
import 'package:todoapp/provider/todos.dart';

class TodoListWidget extends StatefulWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty ?  const Center(child: Text('No Todos', style: TextStyle(fontSize: 20),)) :
      ListView.separated(
      physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index){
            final todo = todos[index];
            return TodoWidget(todo: todo);
          },
          separatorBuilder: (BuildContext context, int index) => Container(height: 8),
          itemCount: todos.length,
    );
  }
}
