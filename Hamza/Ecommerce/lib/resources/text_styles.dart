import 'package:ecommerce/resources/resource.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyle {
  ///textstyles
  TextStyle regularPoppins() {
    return TextStyle(
      fontSize: 40,
      fontFamily: 'Poppins',
      letterSpacing: 0.05,
      color: R.colors.blackColor,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle heading_text() {
    return TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: R.colors.theme,
    );
  }

  TextStyle heading_5() {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: R.colors.themeBlack,
    );
  }

  TextStyle heading_6() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: R.colors.grey,
    );
  }

  TextStyle smallHeading() {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: R.colors.theme,
    );
  }

  TextStyle whiteSmallHeading() {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: R.colors.whiteColor,
    );
  }

  TextStyle graySmallHeading() {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: R.colors.greyDark,
    );
  }
}
