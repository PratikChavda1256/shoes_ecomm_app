import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String image;
  int quantity;
  List<Color> colorsAvail;

  Product({required this.name, required this.price, required this.image,
    required this.quantity, required this.colorsAvail});

}
