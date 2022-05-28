import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final String text;
  final String clickableText;

  const BottomNavBar(
      {Key? key, required this.text, required this.clickableText})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: RichText(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
