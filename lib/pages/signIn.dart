// ignore_for_file: file_names

import 'dart:convert';
import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        AppBar,
        BorderRadius,
        BorderSide,
        BuildContext,
        Center,
        Color,
        Colors,
        Column,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        Form,
        FormState,
        GlobalKey,
        Icon,
        IconButton,
        Icons,
        Image,
        InkWell,
        InputDecoration,
        Key,
        MainAxisAlignment,
        Material,
        Navigator,
        Offset,
        OutlineInputBorder,
        Padding,
        RoundedRectangleBorder,
        Row,
        SafeArea,
        Scaffold,
        ScaffoldMessenger,
        SingleChildScrollView,
        SizedBox,
        SnackBar,
        State,
        StatefulWidget,
        Text,
        TextEditingController,
        TextFormField,
        TextStyle,
        Transform,
        Widget;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool passenable = true;
  bool validate = false;
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  // ignore: non_constant_identifier_names
  Future<void> LoginAccount(String phone, String password) async {
    var url = "https://rafflixbackgroundsevice.onrender.com/api/logIn";
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'phone': phone, 'password': password}),
    );

    if (response.statusCode == 200) {
      // Access the cookies from the response headers
      String? rawCookie = response.headers['set-cookie'];

      if (rawCookie != null) {
        // Save the cookies locally
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('cookie', rawCookie);

        // Print the stored cookie
        String? storedCookie = prefs.getString('cookie');
        if (storedCookie != null) {
        } else {}
      }

      // If the server did return a 200 OK response,
      // you can parse the JSON response.
      // var jsonResponse = json.decode(response.body);
      // return jsonResponse;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to log in.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70.h,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Please sign in to your account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(-85.w, -10.h),
                  child: SizedBox(
                    height: 408.h,
                    width: 356.w,
                    child: Image.asset('assets/images/signin.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: SizedBox(
                    height: 330.h,
                    width: 300.w,
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          InputTextField(
                              'Enter your phone',
                              'Phone',
                              const Icon(Icons.phone_outlined),
                              'phone',
                              phoneController),
                          SizedBox(height: 15.h),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Can't be a blank password";
                              }
                              return null;
                            },
                            controller: passwordController,
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
                                Navigator.pushNamed(context, '/forgotPassword');
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 12.r,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFFBC02D)),
                              ),
                            ),
                          ),
                          SizedBox(height: 27.h),
                          SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  validate = true;
                                  const snackBar =
                                      SnackBar(content: Text('Sign In'));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar); // Use ScaffoldMessenger
                                }
                                if (validate) {
                                  LoginAccount(phoneController.text,
                                      passwordController.text);
                                }
                              },
                              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 12.0,
                                  backgroundColor: const Color(0xFFFBC02D)),
                              child: const Text('Sign In',
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
                                const Text("Don't have an account? "),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/Signin');
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 12.r,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Inter',
                                        color: const Color(0xFFFBC02D)),
                                  ),
                                ),
                              ],
                            ),
                          )
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
