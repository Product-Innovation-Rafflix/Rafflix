import 'package:flutter/material.dart';
import 'package:rafflix/pages/homepage.dart';
import 'package:rafflix/pages/signIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/pages/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (BuildContext context, Widget? widget) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
            // home: SignIn(),
            // home: SignUp(),
          );
        });
  }
}
