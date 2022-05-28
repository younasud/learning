import 'package:assignment/src/dashbaord/Pages/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import 'Card.dart';
import 'Carousel.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:  [
          const Carousel(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: Column(
                children: [
                  CustomCard(
                      cardTitle: 'Home 2',
                      cardText: 'Something',
                      cardImage: R.image.cardImage,
                        onPressed: () {
                          if (kDebugMode) {
                            print('Pressed');
                          }
                        },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
