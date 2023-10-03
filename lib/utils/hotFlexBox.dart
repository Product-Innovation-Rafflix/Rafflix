import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/models/category_model.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class hotFlexBox extends StatelessWidget {
  hotFlexBox({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'CATEGORIES',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 61,
            child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10, right: 10),
                separatorBuilder: (context, index) => SizedBox(
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
                        Container(
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
                }),
          ),
        ),
        SizedBox(
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
                  decoration: BoxDecoration(
                      color: Color(0xffFBC02D),
                      borderRadius: BorderRadius.all(Radius.circular(
                          15)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Current Events.png'),
                  ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25, left: 10),
                        child: Text('Current',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 24.r,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0,left: 10),
                        child: Text('Events',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 32.r,
                          ),
                        ),
                      ),
                    ],
                  ),// Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFBC02D),
                      borderRadius: BorderRadius.all(Radius.circular(
                          15),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Upcoming Events.png'),

                      ),
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:25, left: 10),
                          child: Text('Upcoming',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.r,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0,left: 10),
                          child: Text('Events',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.r,
                            ),
                          ),
                        ),
                      ],
                    )// Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFBC02D),
                        borderRadius: BorderRadius.all(Radius.circular(
                            15),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/Previous Events.png'),
                          alignment:
                        ),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:25, left: 10),
                            child: Text('Previous',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0,left: 10),
                            child: Text('Events',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )// Set the color or add other properties
                ),

            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'HOT',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(
                          15))), // Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(
                          30))), // Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(
                          30))), // Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(
                          30))), // Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(
                          30))), // Set the color or add other properties
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(
                          30))), // Set the color or add other properties
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
