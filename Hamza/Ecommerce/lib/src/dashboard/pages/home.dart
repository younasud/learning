import 'package:flutter/cupertino.dart';

import '../../../resources/resource.dart';
import '../widgets/carousel.dart';
import '../widgets/grocery.dart';
import '../widgets/pharmacy.dart';
import '../widgets/tab_Item.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool is_Grocery = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: R.colors.whiteColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tab_Item(
                    tab_text: 'Grocery',
                    is_active: is_Grocery == true ? true : false,
                    onTabPressed: () {
                      setState(() {
                        is_Grocery = true;
                      });
                    },
                  ),
                  tab_Item(
                    tab_text: 'Pharmacy',
                    is_active: is_Grocery == false ? true : false,
                    onTabPressed: () {
                      setState(() {
                        is_Grocery = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        carousel(),
        is_Grocery == true ? grocery() : pharmacy(),
      ],
    );
  }
}
