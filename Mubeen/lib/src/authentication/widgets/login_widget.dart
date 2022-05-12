import 'package:assignment_1/src/authentication/widgets/signup_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Page Heading
                const Center(
                  child: Text('LOGIN',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: purpleBlue_Color)),
                ),
                const SizedBox(
                  height: 40,
                ),

                //Email Input Field
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: greyBlack_Color,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please Enter your registered email',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.mail_outline,
                        color: greyBlack_Color,
                      ), // icon is 48px widget.
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),

                //Password Input Field
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: greyBlack_Color,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please Enter your password',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.lock_open,
                        color: greyBlack_Color,
                      ), // icon is 48px widget.
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // Forget Pass Link
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextButton(
                        child: const Text('Forgot Password ? '),
                        style: TextButton.styleFrom(
                          primary: greyBlack_Color,
                          textStyle: const TextStyle(
                              color: greyBlack_Color,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Pressed');
                          }
                        }),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),

                // Login Button
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: purpleBlue_Color,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Pressed');
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0.0,
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Don't have an account ? ",
                    style: TextStyle(fontSize: 20, color: greyBlack_Color),
                  ),
                  TextSpan(
                      text: ' Signup',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: purpleBlue_Color,
                          fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const signup()));
                        }),
                ],
              ),
            ),
          )),
    );
  }
}
