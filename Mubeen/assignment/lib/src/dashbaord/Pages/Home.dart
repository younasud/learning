import 'package:flutter/cupertino.dart';

import '../../../resources/resources.dart';
import '../Widgets/CustomTab.dart';
import '../Widgets/home_1.dart';
import '../Widgets/home_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double padding = 25;
  EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: R.color.whiteColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTab(
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
                    CustomTab(
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
              // ),
            ),
          ),
          IndexedStack(
            index: activeTab,
            children:  const [
              HomeOne(),
              HomeTwo(),
            ],
          )
        ],
      ),
    );
  }
}
