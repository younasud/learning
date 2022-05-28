import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';
import 'Widgets/Signup.dart';
import 'Widgets/bottomAppBar.dart';
import 'Widgets/login.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);
  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: index,
            children: const [
              login(),
              signup(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 0.0,
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: index == 0 ? BottomBar(
                text: "Do you have an account ? ",
                clickableText: "Signup",
                  onButtonPressed: TapGestureRecognizer()
              ..onTap = (){
                setState((){
                  index = 1;
                });}
              )
              : BottomBar(
                  text: "Already have an account ? ",
                  clickableText: "Login",
                  onButtonPressed: TapGestureRecognizer()
                    ..onTap = (){
                      setState((){
                        index = 0;
                      });}
              ),
            ),),
      ),
    );
  }
}
