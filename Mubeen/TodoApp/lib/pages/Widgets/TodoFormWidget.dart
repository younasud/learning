import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {

  final String title;
  final String description;
  final ValueChanged<String> onChangeTitle;
  final ValueChanged<String> onChangeDesc;
  final VoidCallback onSave;

  const TodoFormWidget({Key? key,
    this.title = '',
    this.description = '',
    required this.onChangeTitle,
    required this.onChangeDesc,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          const SizedBox(height: 8,),
          buildDesc(),
          const SizedBox(height: 10,),
          Center(child: buildButton()),
        ],
      ),
    );
  }

  Widget buildTitle(){
    return TextFormField(
      initialValue: title,
      onChanged: onChangeTitle,
      validator: (title) {
        if (title == null || title.isEmpty) {
          return 'Title Required';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Title',
      ),
    );
  }

  Widget buildDesc() => TextFormField(
    initialValue: description,
    onChanged: onChangeDesc,
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Description',
    ),
  );

  Widget buildButton() => ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.black, // Background color
    ),
    onPressed: () {
      onSave();
    },
    child: const Text(
      'Save',
      style: TextStyle(fontSize: 20),
    ),
  );
}
