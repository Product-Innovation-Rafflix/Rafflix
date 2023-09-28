import 'package:flutter/material.dart';
import 'package:rafflix/utils/nav.dart';
import 'package:rafflix/utils/flexBox.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(100.0), // Define the preferred height
        child: NavBar(), // Your NavBar widget
      ),
      body: FlexBox(), // Your content goes here
    );
  }
}
