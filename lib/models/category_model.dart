import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
   required this.name,
    required this.iconPath,
    required this.boxColor,
});
  static List<CategoryModel> getCategories(){
  List<CategoryModel> categories = [];

  categories.add(
    CategoryModel(name: 'Sneaker', iconPath: 'images/sneaker.jpg', boxColor: Colors.red)
  );
  categories.add(
      CategoryModel(name: 'iPhone', iconPath: 'images/iPhone.png', boxColor: Colors.cyan)
  );
  categories.add(
      CategoryModel(name: 'Luxury Item', iconPath: 'images/luxury.png', boxColor: Colors.blue)
    );
    return categories;
}
}