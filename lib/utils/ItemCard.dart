import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: <Widget>[
                buildCard('iPhone', '5000 MMK', 'assets/images/iPhone.png', 50,
                    context),
                buildCard('iPhone', '5000 MMK', 'imgPath', 50, context),
                buildCard('iPhone', '5000 MMK', 'imgPath', 50, context),
                buildCard('iPhone', '5000 MMK', 'imgPath', 50, context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard(
      String name, String price, String imgPath, int TicketLeft, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 5),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              imgPath,
                            ),
                            fit: BoxFit.contain)),
                  )),
              SizedBox(
                height: 7.0,
              ),
              Text(price,
                  style: TextStyle(
                      color: Color(0xffcc8053),
                      fontFamily: 'Inter',
                      fontSize: 14)),
              Text(name,
                  style: TextStyle(
                      color: Color(0xffcc8053),
                      fontFamily: 'Inter',
                      fontSize: 14)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xffbebeb),
                  height: 1.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
