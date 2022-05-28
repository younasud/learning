import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../resources/resources.dart';

class SingleProduct extends StatefulWidget {
  const SingleProduct({Key? key,
    required this.productImage,
    required this.productTitle,
    required this.price,
    required this.storeName,
    required this.stock,
    required this.rating}
      ) : super(key: key);
   final String productImage;
   final String productTitle;
   final int price;
   final int rating;
   final String storeName;
   final int stock;

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 180,
        height: 210,
        decoration: BoxDecoration(
          color: R.color.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: R.color.greyBlackColor.withAlpha(40),
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
                  child: Image.asset(widget.productImage),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Row(
                    children:  [
                       const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        widget.rating.toString(),
                        style: TextStyle(color: R.color.greyBlackColor),
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
                        backgroundColor: R.color.whiteColor,
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.heartCircleBolt,
                            color: Colors.red,
                          ),
                          iconSize: 15,
                          color: R.color.purpleBlueColor,
                          focusColor: R.color.purpleBlueColor,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: R.color.whiteColor,
                        child: IconButton(
                          icon:  FaIcon(
                            FontAwesomeIcons.cartShopping,
                            color: R.color.greyBlackColor,
                          ),
                          iconSize: 15,
                          color: R.color.purpleBlueColor,
                          focusColor: R.color.purpleBlueColor,
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
                      widget.productTitle,
                      style: TextStyle(
                          color: R.color.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.storeName,
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: R.color.greyBlackColor, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          widget.stock <= 0 ? 'Out of Stock' : 'In Stock',
                          style: TextStyle(
                              color: widget.stock <= 0 ? R.color.red : R.color.seaGreenColor ,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("PKR${widget.price.toString()}"
                          ,
                          style: TextStyle(
                              color: R.color.greyBlackColor,
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
