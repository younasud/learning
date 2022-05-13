import 'package:flutter/material.dart';
import 'package:login_form/src/authentication/widgets/login_widget.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(28, 30, 114, 1.0),
      ),
      home: const Login(),
    );
  }
}
