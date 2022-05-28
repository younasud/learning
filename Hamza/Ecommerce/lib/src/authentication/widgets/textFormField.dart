import 'package:flutter/material.dart';

import '../../../resources/resource.dart';

class textFormField extends StatelessWidget {
  final String textFieldPlaceholder;
  final bool is_pass;
  final IconData textFieldIcon;

  const textFormField(
      {Key? key,
      required this.textFieldPlaceholder,
      required this.is_pass,
      required this.textFieldIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: is_pass,
      cursorColor: R.colors.theme,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: R.colors.theme, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: Icon(
          textFieldIcon,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: textFieldPlaceholder,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(172, 172, 172, 1.0),
        ),
      ),
    );
  }
}
