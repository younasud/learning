import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../resources/resources.dart';
import '../../utils/widget_function.dart';
import 'Pages/Cart.dart';
import 'Pages/Favourite.dart';
import 'Pages/Home.dart';
import 'Pages/Settings.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late int _selectedItemIndex = 0;
  final screen = [
    const HomePage(),
    const CartPage(),
    const FavoritePage(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {

    return  SafeArea(
        child: Scaffold(
          backgroundColor: R.color.thinGrey,
          appBar: AppBar(
            backgroundColor: R.color.purpleBlueColor,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                  MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: R.color.whiteColor,
                        child: IconButton(
                          icon:
                          const FaIcon(FontAwesomeIcons.magnifyingGlass),
                          iconSize: 15,
                          color: R.color.purpleBlueColor,
                          focusColor: R.color.purpleBlueColor,
                          onPressed: () {},
                        ),
                      ),
                      addHorizontalSpace(10),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: R.color.whiteColor,
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.cartShopping),
                          iconSize: 15,
                          color: R.color.purpleBlueColor,
                          focusColor: R.color.purpleBlueColor,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: screen[_selectedItemIndex]
              ),
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: R.color.purpleBlueColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addVerticalSpace(30),
                buildNavItem(Icons.home, 0, true),
                buildNavItem(Icons.shopping_cart, 1, false),
                buildNavItem(Icons.favorite, 2, false),
                buildNavItem(Icons.settings, 3, false),
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
          color: index == _selectedItemIndex ? R.color.lightYellow : R.color.purpleBlueColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? R.color.purpleBlueColor : R.color.whiteColor,
        ),
      ),
    );
  }
}
