import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.h,
          ),
          Container(
            padding: EdgeInsets.only(right: 10.w),
            width: MediaQuery.of(context).size.width - 30.w,
            height: MediaQuery.of(context).size.height - 50.w,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: <Widget>[
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath: 'assets/images/iPhone15ProMax.jpg',
                    TicketLeft: 50,
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath: 'assets/images/iPhone15ProMax.jpg',
                    TicketLeft: 50,
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath: 'assets/images/iPhone15ProMax.jpg',
                    TicketLeft: 50,
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath: 'assets/images/iPhone15ProMax.jpg',
                    TicketLeft: 50,
                    context: context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.name,
    required this.price,
    required this.imgPath,
    required this.TicketLeft,
    required this.context,
  });

  final String name;
  final String price;
  final String imgPath;
  final int TicketLeft;
  final context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.w, bottom: 5.w, left: 5.w, right: 5.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              imgPath,
                            ),
                            fit: BoxFit.contain)),
                  )),
              SizedBox(
                height: 25.0.h,
              ),
              Text(price,
                  style: TextStyle(
                      color: Color(0xffcc8053),
                      fontFamily: 'Inter',
                      fontSize: 14.r)),
              Text(name,
                  style: TextStyle(
                      color: Color(0xffcc8053),
                      fontFamily: 'Inter',
                      fontSize: 14.r)),
            ],
          ),
        ),
      ),
    );
  }
}
