import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/text_field.dart';

class CheckYourMessages extends StatefulWidget {
  const CheckYourMessages({Key? key}) : super(key: key);

  @override
  State<CheckYourMessages> createState() => _CheckYourMessagesState();
}

class _CheckYourMessagesState extends State<CheckYourMessages> {
  bool passenable = true;
  bool repassenable = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 117.h,
                ),
                Transform.translate(
                  offset: Offset(0.w, 0.h),
                  child: Container(
                    height: 283.h,
                    width: 283.w,
                    child: Image.network('https://via.placeholder.com/283x283'),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 9.h,
                      ),
                      Text(
                        'Check Your message',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Enter the email related with your account.\nWe’ will send an email to reset your password ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Container(
                    height: 300.h,
                    width: 300.w,
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 12.0,
                                  backgroundColor: Color(0xFFFBC02D)),
                              child: const Text('Open Message',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
