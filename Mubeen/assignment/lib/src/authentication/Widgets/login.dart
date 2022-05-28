import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';
import '../../dashbaord/LandingScreen.dart';
import 'Button.dart';
import 'InputField.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          margin:
          const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Page Heading
                 Center(
                  child: Text('LOGIN',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: R.color.purpleBlueColor),),
                ),
                const SizedBox(
                  height: 40,
                ),

                //Email Input Field
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
                  innerText: 'Please Enter registered email',
                  icon: Icons.mail_outline,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 35,
                ),

                //Password Input Field
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
                const CustomTextField(
                  innerText: 'Please enter your password',
                  icon: Icons.lock_open,
                  obscureText: true,
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
                        style: TextButton.styleFrom(
                          primary: R.color.purpleBlueColor,
                          textStyle:  TextStyle(
                              color: R.color.greyBlackColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Pressed');
                          }
                        },
                        child: const Text('Forgot Password ? ')),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                // Login Button
                 SizedBox(
                  width: 300,
                  height: 50,
                  child: customElevatedBtn(
                    btnInnerText: 'LOGIN',
                    btnBgColor: R.color.purpleBlueColor,
                    btnTextColor: R.color.whiteColor,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: R.color.lightYellow,
                      onPrimary: R.color.purpleBlueColor,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    child: const Text('Continue as Guest'),
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LandingScreen())),
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
