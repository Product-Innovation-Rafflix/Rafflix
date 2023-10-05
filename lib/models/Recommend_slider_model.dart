import 'package:flutter/material.dart';

class RecommendImages {
  String imagePath;

  RecommendImages({required this.imagePath});

  static List<RecommendImages> getImages() {
    List<RecommendImages> images = [];

    images.add(RecommendImages(imagePath: 'assets/images/Sneaker.png'));
    images.add(RecommendImages(imagePath: 'assets/images/iPhone.png'));
    images.add(RecommendImages(imagePath: 'assets/images/Diamond.png'));
    images.add(RecommendImages(imagePath: 'assets/images/Car.png'));
    images.add(RecommendImages(imagePath: 'assets/images/Home.png'));
    return images;
  }
}
