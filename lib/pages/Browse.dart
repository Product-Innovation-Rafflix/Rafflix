import 'package:flutter/material.dart';
import 'package:rafflix/utils/BottomNavigationBar.dart';
import 'package:rafflix/utils/ItemCard.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemPage(),
    );
  }
}

class ItemPage extends StatefulWidget {
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
          padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Items',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xffc88d67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 10),
              unselectedLabelColor: Color(0xffcdcdcd),
              tabs: [
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
            Container(
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: [
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
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 1),
    );
  }
}
