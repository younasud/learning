import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../customWidget/spacing.dart';
import '../../../models/Products.dart';
import '../../../resources/colors.dart';
import '../../../resources/resource.dart';
import '../../../utils/constants.dart';
import '../../../utils/widget_functions.dart';

class Single_product extends StatelessWidget {
  final dynamic itemData;

  const Single_product({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 180,
        height: 240,
        decoration: BoxDecoration(
          color: R.colors.COLOR_WHITE,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: R.colors.COLOR_GREY.withAlpha(40),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset('assets/images/product_1.jpg'),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(color: R.colors.COLOR_GREY),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: R.colors.COLOR_WHITE,
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.heartCircleBolt,
                            color: Colors.red,
                          ),
                          iconSize: 15,
                          color: R.colors.COLOR_DARK_BLUE,
                          focusColor: R.colors.COLOR_DARK_BLUE,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: R.colors.COLOR_WHITE,
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.cartShopping,
                            color: R.colors.COLOR_DARK_BLUE,
                          ),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cabbage China",
                      style: TextStyle(
                          color: R.colors.COLOR_BLACK,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hafeez Center",
                      style:
                          TextStyle(color: R.colors.COLOR_GREY, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "In Stock",
                          style: TextStyle(
                              color: R.colors.COLOR_SEA_GREEN,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PKR 25",
                          style: TextStyle(
                              color: R.colors.COLOR_DARK_BLUE,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Product_Page_2 extends StatefulWidget {
  const Product_Page_2({Key? key}) : super(key: key);

  @override
  State<Product_Page_2> createState() => _Product_Page_2State();
}

class _Product_Page_2State extends State<Product_Page_2> {
  late int _selectedItemIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Wrap(
                  children: [
                    ...List.generate(
                      demoStore.length,
                      (index) => const Single_product(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
