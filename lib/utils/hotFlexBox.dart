// ignore_for_file: file_names, camel_case_types, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/models/category_model.dart';
import 'package:rafflix/models/Recommend_slider_model.dart';
import 'package:rafflix/utils/sideBar.dart';
import 'package:rafflix/utils/itemCard.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: must_be_immutable
class hotFlexBox extends StatelessWidget {
  hotFlexBox({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  List<RecommendImages> images = [];

  void _getimages() {
    images = RecommendImages.getImages();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const MyCarouselSlider(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'CATEGORIES',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: 61,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, right: 10),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 61,
                    decoration: BoxDecoration(
                        color: categories[index].boxColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 50.w,
                          height: 50.h,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(categories[index].imagePath),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffFBC02D),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Current Events.png'),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 10),
                          child: Text(
                            'Current',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.r,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 10),
                          child: Text(
                            'Events',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 32.r,
                            ),
                          ),
                        ),
                      ],
                    ), // Set the color or add other properties
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffFBC02D),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/Upcoming Events.png'),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 70),
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 70),
                            child: Text(
                              'Events',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                        ],
                      ) // Set the color or add other properties
                      ),
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFBC02D),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/Previous Events.png'),
                            alignment: Alignment(1.w, 1.h)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              'Previous',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 20),
                            child: Text(
                              'Events',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) // Set the color or add other properties
                    ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Recommanded \nFor You',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 205.h,
                child: Row(
                  children: [
                    MyCard(
                        name: 'iPhone 15 Pro Max',
                        price: '5000 MMK / ticket',
                        imgPath:
                            'https://imageio.forbes.com/specials-images/imageserve/637d5ab08792833e25c808be/0x0.png',
                        TicketLeft: 50,
                        context: context),
                    MyCard(
                        name: 'iPhone 15 Pro Max',
                        price: '5000 MMK / ticket',
                        imgPath:
                            'https://imageio.forbes.com/specials-images/imageserve/637d5ab08792833e25c808be/0x0.png',
                        TicketLeft: 50,
                        context: context),
                    MyCard(
                        name: 'iPhone 15 Pro Max',
                        price: '5000 MMK / ticket',
                        imgPath:
                            'https://imageio.forbes.com/specials-images/imageserve/637d5ab08792833e25c808be/0x0.png',
                        TicketLeft: 50,
                        context: context),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
