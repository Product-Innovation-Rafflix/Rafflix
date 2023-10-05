import 'package:flutter/material.dart';
import 'package:rafflix/main.dart';
import 'package:rafflix/pages/sendInstructionView.dart';

// #7b39ed - primary color

class ResetPW extends StatelessWidget {
  final MaterialColor primarySwatch = MaterialColor(0xff7b39ed, <int, Color>{
    50: Color(0xff7b39ed),
    100: Color(0xff7b39ed),
    200: Color(0xff7b39ed),
    300: Color(0xff7b39ed),
    400: Color(0xff7b39ed),
    500: Color(0xff7b39ed),
    600: Color(0xff7b39ed),
    700: Color(0xff7b39ed),
    800: Color(0xff7b39ed),
    900: Color(0xff7b39ed),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            headline4:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        appBarTheme:
            AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
        primaryColor: Color(0xff7b39ed),
        primarySwatch: primarySwatch,
      ),
      home: SendInstructionsView(),
    );
  }
}
