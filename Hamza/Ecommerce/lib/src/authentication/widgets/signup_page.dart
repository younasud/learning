import 'package:ecommerce/resources/widget_functions.dart';
import 'package:ecommerce/src/authentication/widgets/textFormField.dart';
import 'package:flutter/material.dart';
import '../../../resources/resource.dart';
import 'main_button.dart';

class Signup_page extends StatelessWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
            child: Column(
              children: [
                Text(
                  'Sign UP',
                  style: R.textStyle.heading_text(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: R.textStyle.heading_5(),
                    ),
                    textFormField(
                      is_pass: false,
                      textFieldPlaceholder: 'First Name',
                      textFieldIcon: Icons.perm_identity_outlined,
                    ),
                    addVerticalSpace(20),
                    textFormField(
                      is_pass: false,
                      textFieldPlaceholder: 'Last Name',
                      textFieldIcon: Icons.perm_identity_outlined,
                    ),
                    addVerticalSpace(20),
                    Text(
                      'Email',
                      style: R.textStyle.heading_5(),
                    ),
                    textFormField(
                      is_pass: false,
                      textFieldPlaceholder:
                          'Please enter your registered email',
                      textFieldIcon: Icons.email_outlined,
                    ),
                    addVerticalSpace(20),
                    Text(
                      'Password',
                      style: R.textStyle.heading_5(),
                    ),
                    Text('must include upper case, numbers and symbol',
                        style: R.textStyle.heading_6()),
                    textFormField(
                      is_pass: true,
                      textFieldPlaceholder: 'Please enter your password',
                      textFieldIcon: Icons.lock_open_outlined,
                    ),
                    addVerticalSpace(20),
                    textFormField(
                      is_pass: true,
                      textFieldPlaceholder: 'Confirm your password',
                      textFieldIcon: Icons.lock_open_outlined,
                    ),
                    addVerticalSpace(30),
                    Center(
                      child: mainButton(buttonText: 'SIGNUP'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
