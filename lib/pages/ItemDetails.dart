import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/home.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_rounded))
                  ],
                )),
            Positioned(
                top: 300,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("iPhone 15 Pro Max",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800)),
                      Text(
                        "5000 Ks / Tickets",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
