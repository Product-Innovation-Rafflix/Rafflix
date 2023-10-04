import 'package:flutter/material.dart';
import 'package:rafflix/pages/homepage.dart';
import 'package:rafflix/pages/signIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/pages/signUp.dart';
import 'package:rafflix/utils/sideBar.dart';
import 'package:rafflix/pages/UseProfile.dart';

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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: "carousel",
          // routes: {
          //   "carousel": (context) => MyCarouselSlider(),
          // },
          home: HomePage(),
          // home: SignIn(),
          // home: SignUp(),
          // home: AccountPage(),
        );
      },
    );
  }
}
