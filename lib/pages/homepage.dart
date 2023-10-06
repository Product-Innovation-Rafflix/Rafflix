import 'package:flutter/material.dart';
import 'package:rafflix/utils/BottomNavigationBar.dart';
import 'package:rafflix/utils/hotFlexBox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60.h,
        title: SizedBox(
          height: 40.h,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(width: 1),
              ),
              hintText: 'Search Raffle Item',
              contentPadding: const EdgeInsets.all(10.0),
              suffixIcon: IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {},
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                // Background color of the container
                borderRadius: BorderRadius.circular(
                    20.0), // Border radius for rounded corners
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 1.5, // Border width
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '15000',
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 30.h, // Adjust the height of the icon as needed
                    width: 30
                        .h, // Set the width to match the height for a circular icon
                    child: Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.black, // Change the icon color
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 70,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    padding: const EdgeInsets.only(right: 10),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(child: hotFlexBox()),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0),
    );
  }
}
