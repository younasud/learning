import 'package:flutter/material.dart';

import '../../../resources/resource.dart';

class mainButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  const mainButton({Key? key, required this.buttonText, this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270.0,
      height: 50,
      child: ElevatedButton(
        child: Text(
          buttonText,
          style: buttonColor != null
              ? R.textStyle.smallHeading()
              : R.textStyle.whiteSmallHeading(),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor != null ? buttonColor : R.colors.theme,
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {
          // print("Tapped item");
        },
      ),
    );
  }
}
