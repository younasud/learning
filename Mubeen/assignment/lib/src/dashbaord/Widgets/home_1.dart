import 'package:assignment/src/dashbaord/Pages/product_page.dart';
import 'package:assignment/src/dashbaord/model/Store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import 'Card.dart';
import 'Carousel.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
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
                  ...List.generate(
                    demoStore.length,
                        (index) => CustomCard(
                        cardTitle: demoStore[index].cardTitle,
                        cardText: demoStore[index].cardText,
                        cardImage: demoStore[index].cardImage, onPressed: () {
                          setState((){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductPage(),),);
                          });
                        },),
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
