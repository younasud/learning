import 'package:flutter/material.dart';

import '../../../customWidget/spacing.dart';
import '../../../main.dart';
import '../../../resources/resource.dart';
import 'inputFieldWidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
            left: 30.0, right: 30.0, top: 130.0, bottom: 50.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN UP',
                style: R.textStyle.headingText(),
              ),
              addVerticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Name',
                  style: R.textStyle.heading5(),
                ),
              ),
              addVerticalSpace(10),
              InputField(
                hintText: 'First Name',
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(20),
              InputField(
                hintText: 'Last Name',
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: R.textStyle.heading5(),
                ),
              ),
              addVerticalSpace(10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your registered email',
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.mail_outline,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              addVerticalSpace(10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: R.textStyle.heading5(),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('must include upper case, number and symbol',
                    style: R.textStyle.text2()),
              ),
              addVerticalSpace(10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your password',
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.lock_open,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              addVerticalSpace(8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'inactive',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w100),
                ),
              ),
              addVerticalSpace(8),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm your password',
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.lock_open,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password",
                ),
              ),
              addVerticalSpace(20),
              SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(15, 32, 56, 1),
                  ),
                  child: Text('Submit', style: R.textStyle.text4White()),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
