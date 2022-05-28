import 'package:flutter/cupertino.dart';

class Product{
  late String productImage;
  late String productTitle;
  late int price;
  late String storeName;
  late int stock;
  late int rating;

  Product({
    required this.productImage,
    required this.productTitle,
    required this.price,
    required this.storeName,
    required this.stock,
    required this.rating,
  });
}

List<Product> demoProduct = [
  Product(
    productImage: 'assets/images/product.png',
    productTitle: 'No1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 Grocery',
    price: 125,
    storeName: 'Carrefour',
    stock: 5,
    rating: 5
  ),
  Product(
      productImage: 'assets/images/product.png',
      productTitle: 'No1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 Grocery',
      price: 125,
      storeName: 'Carrefour',
      stock: 0,
      rating: 5
  ),
  Product(
      productImage: 'assets/images/product.png',
      productTitle: 'No1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 GroceryNo1 Grocery',
      price: 125,
      storeName: 'Carrefour',
      stock: 0,
      rating: 5
  ),
];


