import 'dart:io';

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: 350,
            height: 800,
            decoration: BoxDecoration(color: Colors.white),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Positioned(
                  left: 125,
                  top: 85,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 0,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                Positioned(
                  left: 93,
                  top: 114,
                  child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      'Please sign in to your account',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 0,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -113,
                  top: 115,
                  child: Container(
                      width: 356,
                      height: 408,
                      child: Image.asset('images/signin.png')),
                ),
                Positioned(
                  top: 507,
                  left: 30,
                  child: Container(
                    height: 293,
                    width: 300,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(width: 1),
                            ),
                            hintText: 'Email',
                            labelText: 'Email',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.mail_outlined),
                              onPressed: () {},
                            ),
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
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
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/forgotPassword');
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        SizedBox(height: 27),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 12.0,
                                backgroundColor: Color(0xFFFBC02D)),
                            child: const Text('Sign In',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the content horizontally
                            children: [
                              Text("Don't have an account? "),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/Signin');
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 12,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
