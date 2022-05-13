import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_form/src/authentication/widgets/signup_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(38, 41, 121, 1.0),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: Form(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(96, 96, 96, 1.0),
                      ),
                    ),
                  ),
                  TextField(
                    cursorColor: const Color.fromRGBO(28, 30, 114, 1.0),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(28, 30, 114, 1.0),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.mail_outline_outlined,
                        color: Color.fromRGBO(198, 203, 206, 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Please enter your registered email',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(172, 172, 172, 1.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(96, 96, 96, 1.0),
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: const Color.fromRGBO(28, 30, 114, 1.0),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(28, 30, 114, 1.0),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_clock_outlined,
                        color: Color.fromRGBO(198, 203, 206, 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Please enter your password',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(172, 172, 172, 1.0),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 30.0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(28, 30, 114, 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 270.0,
                    height: 40,
                    child: ElevatedButton(
                      child: const Text('LOGIN'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(28, 30, 114, 1.0),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        // print("Tapped item");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: InkWell(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'signup',
                      style: TextStyle(
                        color: Color.fromRGBO(28, 30, 114, 1.0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Signup())),
            ),
          )),
    );
  }
}
