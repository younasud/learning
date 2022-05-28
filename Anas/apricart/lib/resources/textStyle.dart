import 'package:apricart/resources/resource.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyle {
  ///textstyles
  TextStyle regularPoppins() {
    return TextStyle(
      fontSize: 40,
      fontFamily: 'Poppins',
      letterSpacing: 0.05,
      color: R.colors.COLOR_BLACK,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle headingText() {
    return TextStyle(
      color: R.colors.COLOR_DARK_BLUE,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle text4() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: R.colors.COLOR_BLACK,
    );
  }

  TextStyle text4White() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: R.colors.COLOR_WHITE,
    );
  }

  TextStyle text2() {
    return TextStyle(
      color: R.colors.COLOR_GREY,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle heading5() {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: R.colors.COLOR_BLACK,
    );
  }

  TextStyle heading6() {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: R.colors.COLOR_DARK_BLUE,
    );
  }
}
