import 'package:flutter/material.dart';

class Bottom_Bar extends StatefulWidget {
  String text_1;
  String text_2;
  void Function() onButtonPressed;

  Bottom_Bar(
      {Key? key,
      required this.text_1,
      required this.text_2,
      required this.onButtonPressed})
      : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: InkWell(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 36),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.text_1,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                      TextSpan(
                        text: widget.text_2,
                        style: TextStyle(
                          color: Color.fromRGBO(28, 30, 114, 1.0),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: widget.onButtonPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
