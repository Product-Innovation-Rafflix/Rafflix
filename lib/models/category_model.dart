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
        imagePath: 'assets/images/Sneaker.svg', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/iPhone.svg', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Diamond.svg', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Car.svg', boxColor: Color(0xffFBC02D)));
    categories.add(CategoryModel(
        imagePath: 'assets/images/Home.svg', boxColor: Color(0xffFBC02D)));
    return categories;
  }
}
