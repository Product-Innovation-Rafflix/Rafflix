import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/data/data_receta.dart';
import 'package:rafflix/models/model_receta.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 165, 223),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          CarouselSlider.builder(
            itemCount: carruselImages.length,
            itemBuilder: (context, index, realIndex) {
              final carruselImage = carruselImages[index];
              return CardImages(
                carruselImages: carruselImages[index],
              );
            },
            options: CarouselOptions(
              height: 200.h,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 3),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final Receta carruselImages;
  const CardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          child: FadeInImage(
            placeholder: AssetImage("assets/images/loading1.gif"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
