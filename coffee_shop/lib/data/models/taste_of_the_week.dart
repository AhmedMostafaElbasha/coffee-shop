import 'package:flutter/material.dart';

class TasteOfTheWeek {
  final String imagePath;
  final String coffeeName;
  final String shopName;
  final String description;
  final double price;
  bool isFavorite;

  TasteOfTheWeek({
    @required this.imagePath,
    @required this.coffeeName,
    @required this.shopName,
    @required this.description,
    @required this.price,
    this.isFavorite = false,
  });
}
