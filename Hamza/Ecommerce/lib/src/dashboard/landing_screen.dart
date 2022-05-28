import 'package:ecommerce/src/dashboard/pages/about.dart';
import 'package:ecommerce/src/dashboard/pages/cart.dart';
import 'package:ecommerce/src/dashboard/pages/home.dart';
import 'package:ecommerce/src/dashboard/pages/wishlist.dart';
import 'package:ecommerce/src/dashboard/widgets/bottomNavigation.dart';
import 'package:ecommerce/src/dashboard/widgets/circleAvatar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../resources/resource.dart';
import '../../resources/widget_functions.dart';

class landingScreen extends StatefulWidget {
  const landingScreen({Key? key}) : super(key: key);
  @override
  State<landingScreen> createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  late int _selectedItemIndex = 0;
  final pages = [
    home(),
    cart(),
    about(),
    wishList(),
  ];

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: R.colors.theme,
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
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myCircleAvatar(circleAvatar_Icon: Icons.search_outlined),
                addHorizontalSpace(10),
                myCircleAvatar(
                  circleAvatar_Icon: Icons.shopping_cart,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Hamza Sajed"),
              accountEmail: Text("Hamzasajed.oso@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg'),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: pages[_selectedItemIndex],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: R.colors.theme,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            addVerticalSpace(30),
            buildNavItem(Icons.home, 0, true),
            buildNavItem(Icons.add_shopping_cart_outlined, 1, false),
            buildNavItem(Icons.person, 2, false),
            buildNavItem(Icons.pie_chart, 3, false),
            addVerticalSpace(30),
          ],
        ),
      ),
    );
  }
}
