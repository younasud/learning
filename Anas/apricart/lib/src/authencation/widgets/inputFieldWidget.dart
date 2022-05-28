import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  String hintText;
  Icon icon;

  InputField({Key? key, required this.hintText, required this.icon})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: widget.hintText,
        prefixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: widget.icon,
        ),
      ),
    );
  }
}
