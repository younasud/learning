import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_widget.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign UP',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(45, 94, 115, 1.0),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(96, 96, 96, 1.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
                          cursorColor: const Color.fromRGBO(28, 30, 114, 1.0),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(28, 30, 114, 1.0),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(
                              Icons.perm_identity,
                              color: Color.fromRGBO(198, 203, 206, 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'First Name',
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(172, 172, 172, 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
                          cursorColor: const Color.fromRGBO(28, 30, 114, 1.0),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(28, 30, 114, 1.0),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(
                              Icons.perm_identity,
                              color: Color.fromRGBO(198, 203, 206, 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'Last Name',
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(172, 172, 172, 1.0),
                            ),
                          ),
                        ),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
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
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'must include upper case, numbers and symbol',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(165, 165, 165, 1.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
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
                              Icons.lock_open_outlined,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
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
                              Icons.lock_open_outlined,
                              color: Color.fromRGBO(198, 203, 206, 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'Confirm your password',
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(172, 172, 172, 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 270.0,
                        height: 40,
                        child: ElevatedButton(
                          child: const Text('SIGN UP'),
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(28, 30, 114, 1.0),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: InkWell(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Already have an account ? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                        color: Color.fromRGBO(28, 30, 114, 1.0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Login())),
            ),
          )),
    );
  }
}
