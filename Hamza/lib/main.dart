// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:login_form/src/authentication/auth_page.dart';

void main() {
  // runApp(const Login());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Auth();
  }
}
