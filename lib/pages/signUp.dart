import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Material(
        child: Stack(
          children: [
            Positioned(
              left: 81.w,
              top: 80.h,
              child: Container(
                width: 362.w,
                height: 362.h,
                child: Image.asset("images/signup.png"),
              ),
            ),
            Positioned(
              top: 70.h,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Create new account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0),
                    ),
                    Text(
                      'Please fill in the form to comtinue',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 315.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Container(
                    height: 382.h,
                    width: 300.w,
                    child: Column(
                      children: [
                        InputTextField('Enter your username', 'username',
                            Icon(Icons.person_2_outlined)),
                        SizedBox(height: 15.h),
                        InputTextField('Enter your email', 'Email',
                            Icon(Icons.mail_outlined)),
                        SizedBox(height: 15.h),
                        InputTextField('Enter your phone', 'Phone',
                            Icon(Icons.call_outlined)),
                        SizedBox(height: 15.h),
                        TextField(
                          obscureText: passenable,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(width: 1),
                            ),
                            hintText: 'Enter Your Password',
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  // Use setState to trigger a rebuild
                                  passenable = !passenable;
                                });
                              },
                              icon: Icon((passenable == true)
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 14.r,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/needHelp');
                            },
                            child: Text(
                              'Need Help?',
                              style: TextStyle(
                                  fontSize: 12.r,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        SizedBox(height: 27.h),
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
                            child: const Text('Sign Up',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the content horizontally
                            children: [
                              Text("Already have an account? "),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/signIn');
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 12.r,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                      color: Color(0xFFFBC02D)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
