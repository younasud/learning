import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  String text;
  String clickableText;
  TapGestureRecognizer onButtonPressed;

  BottomBar(
      {Key? key,
      required this.text,
      required this.clickableText,
      required this.onButtonPressed})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: widget.text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: widget.clickableText,
            style: const TextStyle(
              color: Color.fromRGBO(15, 32, 56, 1),
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            recognizer: widget.onButtonPressed,
          ),
        ],
      ),
    );
  }
}
