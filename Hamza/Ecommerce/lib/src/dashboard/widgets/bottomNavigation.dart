import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../resources/resource.dart';
import '../../../resources/widget_functions.dart';

class bottomNavigation extends StatefulWidget {
  bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  late int _selectedItemIndex = 0;
  GestureDetector buildNavItem(IconData icon, int index, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: index == _selectedItemIndex ? R.colors.yellow : R.colors.theme,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? R.colors.blackColor
              : R.colors.whiteColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: R.colors.theme,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          addVerticalSpace(30),
          buildNavItem(Icons.home, 0, true),
          buildNavItem(Icons.camera, 1, false),
          buildNavItem(Icons.person, 2, false),
          buildNavItem(Icons.pie_chart, 3, false),
          addVerticalSpace(30),
        ],
      ),
    );
  }
}
