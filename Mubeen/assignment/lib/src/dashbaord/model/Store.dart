import 'package:flutter/cupertino.dart';

class Store{
  late String cardTitle;
  late String cardText;
  late String cardImage;

  Store({
    required this.cardTitle,
    required this.cardText,
    required this.cardImage,
  });
}

List<Store> demoStore = [
  Store(
    cardTitle: 'Zeshan Bakers',
    cardText: 'No1 Grocery Store in Pakistan',
    cardImage: 'assets/images/carrefour.png',
  ),
  Store(
    cardTitle: 'Al-fateh Mall',
    cardText: 'Biggest Grocery Store',
    cardImage: 'assets/images/naheed.jpg',
  ),
  Store(
    cardTitle: 'Emporium Mall',
    cardText: 'No1 Grocery Store in Pakistan',
    cardImage: 'assets/images/product.png',
  ),
];


