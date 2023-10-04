import 'package:flutter/material.dart';

class RecommendImages {
  String imagePath;

  RecommendImages({required this.imagePath});

  static List<RecommendImages> getImages() {
    List<RecommendImages> images = [];

    images.add(RecommendImages(imagePath: 'assets/images/signin.png'));
    images.add(RecommendImages(imagePath: 'assets/images/signin.png'));
    images.add(RecommendImages(imagePath: 'assets/images/Diamond.svg'));
    images.add(RecommendImages(imagePath: 'assets/images/Car.svg'));
    images.add(RecommendImages(imagePath: 'assets/images/Home.svg'));
    return images;
  }
}
