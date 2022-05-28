import 'package:ecommerce/src/authentication/widgets/bottom_bar.dart';
import 'package:ecommerce/src/authentication/widgets/login_page.dart';
import 'package:ecommerce/src/authentication/widgets/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../resources/resource.dart';

class Auth2 extends StatefulWidget {
  const Auth2({Key? key}) : super(key: key);

  @override
  State<Auth2> createState() => _Auth2State();
}

class _Auth2State extends State<Auth2> {
  bool is_login_page = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: is_login_page ? Login_Page() : Signup_page(),
            ),
            Bottom_Bar(
              text_1:
                  is_login_page ? R.string.text_login : R.string.text_signup,
              text_2: is_login_page
                  ? R.string.text_login_2
                  : R.string.text_signup_2,
              onButtonPressed: () {
                setState(() {
                  is_login_page ? is_login_page = false : is_login_page = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
