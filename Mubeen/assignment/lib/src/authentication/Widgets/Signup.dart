
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../resources/colors.dart';
import '../../../resources/resources.dart';
import 'Button.dart';
import 'InputField.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
          margin:
          const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Page Heading
                 Center(
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: R.color.purpleBlueColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Name Input Field
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: R.color.greyBlackColor,
                      ),
                    ),
                  ),
                ),
                //First Name
                const CustomTextField(
                  innerText: 'First Name',
                  icon: Icons.account_box,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                //LastName Input
                const CustomTextField(
                  innerText: 'Last Name',
                  icon: Icons.account_box,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),

                //Email Input Filed
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: R.color.greyBlackColor,
                      ),
                    ),
                  ),
                ),
                const CustomTextField(
                  innerText: 'Please enter your registered email',
                  icon: Icons.mail_outline,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),

                //Password Filed's
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: R.color.greyBlackColor,
                      ),
                    ),
                  ),
                ),
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'must include upper case, numbers and symbol',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: R.color.greyBlackColor,
                      ),
                    ),
                  ),
                ),
                const CustomTextField(
                  innerText: 'Please enter your password',
                  icon: Icons.lock_open,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomTextField(
                  innerText: 'Confirm your password',
                  icon: Icons.lock_open,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                // SignUp Button
                 SizedBox(
                  width: 300,
                  height: 50,
                  child: customElevatedBtn(
                    btnInnerText: 'SIGN UP',
                    btnBgColor: R.color.purpleBlueColor,
                    btnTextColor: R.color.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
