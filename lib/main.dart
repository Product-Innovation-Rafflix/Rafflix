import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/pages/CheckYourMessages.dart';
import 'package:rafflix/pages/ResetPass.dart';
import 'package:rafflix/pages/UseProfile.dart';
import 'package:rafflix/pages/homepage.dart';
import 'package:rafflix/utils/BottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/item': (context) => const CheckYourMessages(),
            '/exchange': (context) => const ResetPass(),
            '/profile': (context) => const AccountPage(),
          },
        );
      },
    );
  }
}
