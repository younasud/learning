import 'package:flutter/material.dart';

class todoItem extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  void Function() checkCallback;
  todoItem({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: const Color.fromRGBO(49, 49, 49, 1.0),
          elevation: 3,
          child: ListTile(
            leading: const Icon(
              Icons.task,
              size: 35,
              color: Colors.lightBlueAccent,
            ),
            title: Text(
              taskTitle,
              style: TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.w500,
                decoration: isChecked ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: isChecked,
              onChanged: (newValue) {},
            ),
          ),
        ),
        onTap: checkCallback,
      ),
    );
  }
}
