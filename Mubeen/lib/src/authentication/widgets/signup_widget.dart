import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors.dart';
import 'login_widget.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: purpleBlue_Color,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Name Input Field
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: greyBlack_Color,
                      ),
                    ),
                  ),
                ),
                //First Name
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.account_box,
                        color: greyBlack_Color,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //LastName Input Field
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.account_box,
                        color: greyBlack_Color,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //Email Input Filed
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
                //First Name
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please enter your registered email',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.mail_outline,
                        color: greyBlack_Color,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //Password Filed's
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'must include upper case, numbers and symbol',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: greyBlack_Color,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please enter your password',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.lock_open,
                        color: greyBlack_Color,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm your password',
                    fillColor: greyBlack_Color,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.lock_outline,
                        color: greyBlack_Color,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                // Login Button
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('SIGN UP'),
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
                      print('Pressed');
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
                    text: "Already have an account ? ",
                    style: TextStyle(fontSize: 20, color: greyBlack_Color),
                  ),
                  TextSpan(
                      text: ' Log in',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: purpleBlue_Color,
                          fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        }),
                ],
              ),
            ),
          )),
    );
  }
}
