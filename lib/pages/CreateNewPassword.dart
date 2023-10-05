import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/text_field.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                        'Never Forget to create a strong and reliable password\nTo Keep your account SECURE.',
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
                  height: 16.h,
                ),
                Transform.translate(
                  offset: Offset(0.w, 0.h),
                  child: Container(
                    height: 266.h,
                    width: 291.w,
                    child: Image.network('https://via.placeholder.com/291x266'),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Container(
                    height: 300.h,
                    width: 300.w,
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
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
                          TextFormField(
                            obscureText: repassenable,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(width: 1),
                              ),
                              hintText: 'Confirm Your Password',
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    // Use setState to trigger a rebuild
                                    repassenable = !repassenable;
                                  });
                                },
                                icon: Icon((repassenable == true)
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
                              child: const Text('Reset Password',
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
