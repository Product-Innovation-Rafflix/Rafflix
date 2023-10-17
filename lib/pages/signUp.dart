import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // Updated key type
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Create new account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Please fill in the form to continue',
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
                  offset: Offset(95.w, -40.h),
                  child: Container(
                    width: 362.w,
                    height: 362.h,
                    child: Image.asset("assets/images/signup.png"),
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Container(
                    height: 400.h,
                    width: 300.w,
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          InputTextField('Enter your username', 'Username',
                              Icon(Icons.person_2_outlined), 'username'),
                          SizedBox(height: 15.h),
                          InputTextField('Enter your phone', 'Phone',
                              Icon(Icons.call_outlined), 'phone'),
                          SizedBox(height: 15.h),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$')
                                      .hasMatch(value)) {
                                return "Enter a valid password (at least 8 characters with uppercase, lowercase, and digits).";
                              }
                              return null;
                            },
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
                                  fontFamily: 'Inter',
                                  color: Color(0xFFFBC02D),
                                ),
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
                                  final snackBar =
                                      SnackBar(content: Text('Sign Up'));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar); // Use ScaffoldMessenger
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 12.0,
                                backgroundColor: Color(0xFFFBC02D),
                              ),
                              child: const Text('Sign Up',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
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
                                      color: Color(0xFFFBC02D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
