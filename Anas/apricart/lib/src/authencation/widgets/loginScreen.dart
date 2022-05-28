import 'package:apricart/src/dashboard/LandingScreen.dart';
import 'package:flutter/material.dart';
import '../../../customWidget/spacing.dart';
import '../../../main.dart';
import '../../../resources/resource.dart';
import 'inputFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'LOGIN',
                style: R.textStyle.headingText(),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: R.textStyle.heading5(),
                ),
              ),
              addVerticalSpace(10),
              InputField(
                hintText: 'Please enter your registered email',
                icon: const Icon(
                  Icons.mail_outline,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: R.textStyle.heading5(),
                ),
              ),
              addVerticalSpace(10),
              InputField(
                hintText: 'Please enter your password',
                icon: const Icon(
                  Icons.lock_open,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password ?",
                  style: R.textStyle.heading6(),
                ),
              ),
              addVerticalSpace(40),
              SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: R.colors.COLOR_DARK_BLUE,
                  ),
                  child: Text('Submit', style: R.textStyle.text4White()),
                  onPressed: () => {},
                ),
              ),
              addVerticalSpace(50),
              SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: R.colors.COLOR_YELLOW),
                  child: const Text('Continue as Guest',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LandingScreen())),
                  },
                ),
              ),
              addVerticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
