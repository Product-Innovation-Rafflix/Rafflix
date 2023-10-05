import 'package:flutter/material.dart';
import 'package:rafflix/utils/hotFlexBox.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(width: 1),
              ),
              hintText: 'Search Raffle Item',
              contentPadding: const EdgeInsets.all(10.0),
              suffixIcon: IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {},
              ),
            ),
          ),
        ),
        actions: <Widget>[
          SizedBox(
            height: 50,
            width: 70,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    padding: const EdgeInsets.only(right: 10),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(child: hotFlexBox()),
    );
  }
}
