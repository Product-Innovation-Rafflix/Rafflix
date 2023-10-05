import 'package:flutter/material.dart';
import 'package:rafflix/pages/homepage.dart';
import 'package:rafflix/pages/signIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/pages/signUp.dart';
import 'package:rafflix/pages/sendInstructionView.dart';
import 'package:rafflix/pages/UseProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 800),
//       builder: (BuildContext context, Widget? widget) {
//         return const MaterialApp(
//           debugShowCheckedModeBanner: false,
//           // home: HomePage(),
//           // home: SignIn(),
//           // home: SignUp(),
//           home: ResetPW(),
//         );
//       },
//     );
//   }
// }
