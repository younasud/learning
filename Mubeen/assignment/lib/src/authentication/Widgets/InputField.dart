import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {required this.innerText, this.icon, required this.obscureText, Key? key})
      : super(key: key);
  final String innerText;
  final IconData? icon;
  final bool obscureText;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    String text = widget.innerText;
    return TextFormField(
      obscureText: widget.obscureText,
      style: TextStyle(fontSize: 13, color: R.color.lightGreyColor),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: R.color.lightGreyColor, // <-- Change this
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Icon(
            widget.icon,
            color: R.color.iconColor,
          ), // icon is 48px widget.
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: R.color.lightGreyBorder),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(width: 1.5, color: R.color.purpleBlueColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
