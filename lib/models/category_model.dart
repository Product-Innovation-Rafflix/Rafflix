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
        imagePath: 'assets/images/sneaker.jpg', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/iPhone.png', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/luxury.png', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/luxury.png', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/luxury.png', boxColor: Color(0xffFBC02D)));
    return categories;
  }
}
