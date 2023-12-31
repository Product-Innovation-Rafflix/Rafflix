import 'package:flutter/material.dart';

class CategoryModel {
  String imagePath;
  Color boxColor;

  CategoryModel({
    required this.imagePath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        imagePath: 'assets/images/Sneaker.png',
        boxColor: const Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/iPhone.png',
        boxColor: const Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Diamond.png',
        boxColor: const Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Car.png', boxColor: const Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Home.png',
        boxColor: const Color(0xffFBC02D)));
    return categories;
  }
}
