import 'package:flutter/material.dart';

class cardModel {
  late String card_Text;
  late String card_Title;
  late String card_Image;

  cardModel({
    required this.card_Image,
    required this.card_Text,
    required this.card_Title,
  });
}

List<cardModel> demoCards = [
  cardModel(
    card_Image: "assets/images/product_2.jpg",
    card_Text: "High Quality Products",
    card_Title: "Key Chain",
  ),
  cardModel(
    card_Image: "assets/images/product_3.jpg",
    card_Text: "High Quality Products",
    card_Title: "Cycle",
  ),
  cardModel(
    card_Image: "assets/images/product_4.jpg",
    card_Text: "High Quality Products",
    card_Title: "Mobile",
  ),
];
