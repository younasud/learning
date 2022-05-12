import 'package:assignment_1/src/authentication/widgets/login_widget.dart';
import 'package:assignment_1/src/authentication/widgets/signup_widget.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(),
    );
  }
}
