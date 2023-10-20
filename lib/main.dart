import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/pages/Browse.dart';
import 'package:rafflix/pages/UseProfile.dart';
import 'package:rafflix/pages/homepage.dart';
import 'package:rafflix/pages/retriveCookie.dart';
import 'package:rafflix/pages/signIn.dart';
import 'package:rafflix/pages/signUp.dart';

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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.amber,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/item': (context) => const ItemPage(),
            '/exchange': (context) => const RetrieveCookiePage(),
            '/profile': (context) => const AccountPage(),
            '/signin': (context) => const SignIn(),
            '/signup': (context) => const SignUp(),
          },
        );
      },
    );
  }
}
