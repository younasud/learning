import 'package:apricart/src/authencation/widgets/bottomBarWidget.dart';
import 'package:apricart/src/authencation/widgets/loginScreen.dart';
import 'package:apricart/src/authencation/widgets/signupScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [
          LoginScreen(),
          SignupScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: index == 0
              ? BottomBar(
                  text: "Don't have an account ? ",
                  clickableText: 'Signup',
                  onButtonPressed: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        index = 1;
                      });
                    })
              : BottomBar(
                  text: 'Already have an account ? ',
                  clickableText: 'Login',
                  onButtonPressed: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        index = 0;
                      });
                    }),
        ),
      ),
    );
  }
}
