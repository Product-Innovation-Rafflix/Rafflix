import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String imagePath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.imagePath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Sneaker',
        imagePath: 'images/sneaker.jpg',
        boxColor: Colors.red));
    categories.add(CategoryModel(
        name: 'iPhone', imagePath: 'images/iPhone.png', boxColor: Colors.cyan));
    categories.add(CategoryModel(
        name: 'Luxury Item',
        imagePath: 'images/luxury.png',
        boxColor: Colors.blue));
    return categories;
  }
}
