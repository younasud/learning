import 'package:flutter/material.dart';

class Utils{
  static void showSnackerBar(BuildContext context, String text) =>
      Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(text)));
}