// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
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
                    imgPath:
                        'https://d33wubrfki0l68.cloudfront.net/1b391b66041659bc2e38770ae04dccffc0f7b094/e07a3/static/b2c3890c4e0d5dbe6ec37c5cd8c7dc6d/e414c/home-manhatton-34-sd-29-scaled.jpg',
                    TicketLeft: 50,
                    itemName: 'Item-1',
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath:
                        'https://www.topgear.com/sites/default/files/2023/08/P90492179_highRes_bmw-i7-xdrive60-m-sp%20%281%29.jpg',
                    TicketLeft: 50,
                    itemName: 'Item-2',
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath:
                        'https://imageio.forbes.com/specials-images/imageserve/637d5ab08792833e25c808be/0x0.png',
                    TicketLeft: 50,
                    itemName: 'Item-3',
                    context: context),
                MyCard(
                    name: 'iPhone 15 Pro Max',
                    price: '5000 MMK / ticket',
                    imgPath:
                        'https://imageio.forbes.com/specials-images/imageserve/637d5ab08792833e25c808be/0x0.png',
                    TicketLeft: 50,
                    itemName: 'Item-3',
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
    Key? key,
    required this.name,
    required this.price,
    required this.imgPath,
    required this.TicketLeft,
    required this.context,
    required this.itemName,
  }) : super(key: key);

  final String name;
  final String price;
  final String imgPath;
  final String itemName;
  final int TicketLeft;
  final context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.w, bottom: 5.w, left: 5.w, right: 5.w),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/item',
            arguments: itemName, // Passing the item name as an argument
          );
        },
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
              const SizedBox(
                height: 24.0,
              ),
              CachedNetworkImage(
                imageUrl: imgPath,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit
                    .cover, // Adjust the BoxFit property according to your requirement
                width: 150, // Specify the desired width
                height: 100, // Specify the desired height
              ),
              SizedBox(
                height: 25.0.h,
              ),
              Text(price,
                  style: TextStyle(
                      color: const Color(0xFFFBC02D),
                      fontFamily: 'Inter',
                      fontSize: 14)),
              Text(name,
                  style: TextStyle(
                      color: const Color(0xFFFBC02D),
                      fontFamily: 'Inter',
                      fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
