import 'package:ecommerce/resources/widget_functions.dart';
import 'package:ecommerce/src/authentication/widgets/main_button.dart';
import 'package:ecommerce/src/authentication/widgets/textFormField.dart';
import 'package:flutter/material.dart';
import '../../../resources/resource.dart';
import '../../dashboard/landing_screen.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Text(
              'Login',
              style: R.textStyle.heading_text(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: R.textStyle.heading_5(),
                  ),
                  textFormField(
                    is_pass: false,
                    textFieldPlaceholder: 'Please enter your registered email',
                    textFieldIcon: Icons.mail_outline_outlined,
                  ),
                  addVerticalSpace(40),
                  Text(
                    'Password',
                    style: R.textStyle.heading_5(),
                  ),
                  textFormField(
                    is_pass: true,
                    textFieldPlaceholder: 'Please enter your password',
                    textFieldIcon: Icons.lock_open_outlined,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 30.0),
                      child: Text(
                        'Forgot Password?',
                        style: R.textStyle.smallHeading(),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        mainButton(
                          buttonText: 'LOGIN',
                        ),
                        addVerticalSpace(40),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => landingScreen()));
                          },
                          child: AbsorbPointer(
                            child: mainButton(
                              buttonText: "CONTINUE AS GUEST",
                              buttonColor: R.colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
