import 'package:apricart/models/Shops.dart';
import 'package:apricart/src/dashboard/widgets/ExtraScreen.dart';
import 'package:apricart/src/dashboard/widgets/SettingsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/resource.dart';
import 'Card.dart';
import 'Carousel.dart';
import 'ProductsScreen.dart';
import 'TabWidget.dart';
import 'UserScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static double padding = 25;
  EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: R.colors.COLOR_WHITE,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabButton(
                      text: "Grocery",
                      height: height,
                      width: width / 2.5,
                      index: 0,
                      activeTab: activeTab,
                      onPressed: () {
                        setState(() {
                          activeTab = 0;
                        });
                      }),
                  TabButton(
                    text: "Pharmacy",
                    height: height,
                    width: width / 2.5,
                    index: 1,
                    activeTab: activeTab,
                    onPressed: () {
                      setState(() {
                        activeTab = 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          IndexedStack(
            index: activeTab,
            children: [
              Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Carousel(),
                    ),
                    ...List.generate(
                      demoShops.length,
                      (index) => CustomCard(
                        cardTitle: demoShops[index].cardTitle,
                        cardText: demoShops[index].cardText,
                        cardImage: demoShops[index].cardImage,
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Product_Page_2()));
                          });
                        },
                      ),
                    ),
                    // CustomCard(
                    //   cardTitle: 'Hello World',
                    //   cardText: 'lorem ipsem hej jsjikd',
                    //   cardImage: 'assets/images/product_1.jpg',
                    //   onPressed: () {
                    //     setState(() {
                    //       Navigator.of(context).push(MaterialPageRoute(
                    //           builder: (context) => const Product_Page_2()));
                    //     });
                    //   },
                    // ),
                    Text('HEllo'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Carousel(),
                    ),
                    Text('Bye'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
