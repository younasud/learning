import 'package:apricart/resources/resource.dart';
import 'package:apricart/src/authencation/Auth.dart';
import 'package:apricart/src/authencation/widgets/loginScreen.dart';
import 'package:apricart/src/authencation/widgets/signupScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../resources/resource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apricart',
      home: Auth(),
    );
  }
}
