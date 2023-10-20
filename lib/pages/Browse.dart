// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rafflix/utils/BottomNavigationBar.dart';
import 'package:rafflix/utils/ItemCard.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemPage(),
    );
  }
}

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20.0),
          children: <Widget>[
            const SizedBox(height: 20.0),
            const Text(
              'Items',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xffc88d67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 10),
              unselectedLabelColor: const Color(0xffcdcdcd),
              tabs: const [
                Tab(
                  child: Text(
                    'Fashion',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Device',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jewellery',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Car',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Real Estate',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 1),
    );
  }
}
