import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../resources/resource.dart';

class singleProduct extends StatelessWidget {
  final String productName;
  final String shopName;
  final int stockQuantity;
  final int price;
  final String productImage;

  const singleProduct({
    Key? key,
    required this.productName,
    required this.shopName,
    required this.stockQuantity,
    required this.price,
    required this.productImage,
  }) : super(key: key);

  @override
  final inStockText = "In Stock";
  final outOfStockText = "Out Of Stock";
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.11,
        height: 240,
        decoration: BoxDecoration(
          color: R.colors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: R.colors.greyDark.withAlpha(40),
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
                  child: Image.asset(productImage, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(color: R.colors.greyDark),
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
                        backgroundColor: R.colors.whiteColor,
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.heartCircleBolt,
                            color: Colors.red,
                          ),
                          iconSize: 15,
                          color: R.colors.greyDark,
                          focusColor: R.colors.theme,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: R.colors.whiteColor,
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.cartShopping,
                            color: R.colors.theme,
                          ),
                          iconSize: 15,
                          color: R.colors.greyDark,
                          focusColor: R.colors.theme,
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
                      productName,
                      style: TextStyle(
                          color: R.colors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      shopName,
                      style: TextStyle(color: R.colors.greyDark, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          stockQuantity > 0 ? inStockText : outOfStockText,
                          style: TextStyle(
                              color: stockQuantity > 0
                                  ? R.colors.seaGreen
                                  : R.colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PKR ${price}",
                          style: TextStyle(
                              color: R.colors.theme,
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
