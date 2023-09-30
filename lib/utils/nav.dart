import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        title: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          // child:
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: SizedBox(
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
          // ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {},
          padding: const EdgeInsets.only(left: 10),
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
            padding: const EdgeInsets.only(left: 0),
            color: Colors.black,
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          // IconButton(
          //   icon: const Icon(Icons.account_circle_outlined),
          //   onPressed: () {},
          //   padding: const EdgeInsets.only(right: 5),
          //   color: Colors.black,
          // ),
        ],
      ),
    );
  }
}
