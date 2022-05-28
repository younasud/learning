import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../dashbaord/LandingScreen.dart';

class customElevatedBtn extends StatefulWidget {
  customElevatedBtn(
      {required this.btnInnerText,
        required this.btnBgColor,
        required this.btnTextColor,
        this.onButtonPressed,
        Key? key})
      : super(key: key);

  final String btnInnerText;
  final Color btnBgColor;
  final Color btnTextColor;
  TapGestureRecognizer? onButtonPressed;
  @override
  State<customElevatedBtn> createState() => _customElevatedBtnState();
}

class _customElevatedBtnState extends State<customElevatedBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: widget.btnBgColor,
        onPrimary: widget.btnTextColor,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: () {
        if (kDebugMode) {
          print('Pressed');
        }
      },
      child: Text(widget.btnInnerText.toUpperCase()),
    );
  }
}
