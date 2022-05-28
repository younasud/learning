import 'package:flutter/material.dart';

class shopModel {
  late String product_Name;
  late String product_shop_name;
  late int stock_quantity;
  late int product_price;
  late String product_Image;

  shopModel({
    required this.product_Name,
    required this.product_shop_name,
    required this.product_price,
    required this.stock_quantity,
    required this.product_Image,
  });
}

List<shopModel> demoStore = [
  shopModel(
    product_Name: "Cabbage China",
    product_shop_name: "Hafeez Center",
    product_price: 25,
    stock_quantity: 2,
    product_Image: "assets/images/product_2.jpg",
  ),
  shopModel(
    product_Name: "HeadPhones",
    product_shop_name: "Hafeez Center",
    product_price: 250,
    stock_quantity: 20,
    product_Image: "assets/images/product_3.jpg",
  ),
  shopModel(
    product_Name: "Mobile",
    product_shop_name: "Hall Road",
    product_price: 999,
    stock_quantity: 0,
    product_Image: "assets/images/product_4.jpg",
  ),
  shopModel(
    product_Name: "Television",
    product_shop_name: "TownShip",
    product_price: 30000,
    stock_quantity: 12,
    product_Image: "assets/images/product_5.jpg",
  ),
];
