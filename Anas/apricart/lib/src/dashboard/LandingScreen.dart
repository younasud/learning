import 'dart:ffi';

import 'package:apricart/src/dashboard/widgets/Card.dart';
import 'package:apricart/src/dashboard/widgets/Carousel.dart';
import 'package:apricart/src/dashboard/widgets/ExtraScreen.dart';
import 'package:apricart/src/dashboard/widgets/HomeScreen.dart';
import 'package:apricart/src/dashboard/widgets/SettingsScreen.dart';
import 'package:apricart/src/dashboard/widgets/TabWidget.dart';
import 'package:apricart/src/dashboard/widgets/UserScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../customWidget/spacing.dart';
import '../../resources/resource.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  static double padding = 25;
  EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
  late int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const SettingsScreen(),
      const UserScreen(),
      const ExtraScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: R.colors.COLOR_DARK_BLUE,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: R.colors.COLOR_WHITE,
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
                          iconSize: 15,
                          color: R.colors.COLOR_DARK_BLUE,
                          focusColor: R.colors.COLOR_DARK_BLUE,
                          onPressed: () {},
                        ),
                      ),
                      addHorizontalSpace(10),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: R.colors.COLOR_WHITE,
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.cartShopping),
                          iconSize: 15,
                          color: R.colors.COLOR_DARK_BLUE,
                          focusColor: R.colors.COLOR_DARK_BLUE,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: R.colors.COLOR_DARK_BLUE,
                ),
                accountName: const Text("Anas"),
                accountEmail: const Text("anas@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg'),
                ),
              ),
            ],
          ),
        ),
        body: pages[_selectedItemIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: R.colors.COLOR_DARK_BLUE,
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
        ),
      ),
    );
  }

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
          color: index == _selectedItemIndex
              ? R.colors.COLOR_YELLOW
              : R.colors.COLOR_DARK_BLUE,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? R.colors.COLOR_BLACK
              : R.colors.COLOR_WHITE,
        ),
      ),
    );
  }
}
