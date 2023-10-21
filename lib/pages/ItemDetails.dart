import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/socket_manager.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  late IO.Socket socket;
  List<Map> mydata = [];

  @override
  void initState() {
    super.initState();
    socket = SocketManager().socket;
    socket.emit('request_tickets', 'Item-3');
    socket.on('hello', (data) {
      setState(() {
        mydata = parseResponseData(data.toString());
      });
    });
  }

  List<Map> parseResponseData(String response) {
    List<dynamic> parsedData = json.decode(response);
    print(parsedData);
    List<Map> parsedList = [];
    for (var item in parsedData) {
      print(item);
      parsedList.add({
        "key": item['key'],
        "value": item['value'],
      });
    }

    // Sort the list based on the numeric part of the keys
    parsedList.sort((a, b) {
      var aNumber =
          int.parse(a['key'].substring(a['key'].lastIndexOf(':') + 1));
      var bNumber =
          int.parse(b['key'].substring(b['key'].lastIndexOf(':') + 1));
      return aNumber.compareTo(bNumber);
    });

    return parsedList;
  }

  List<Map> selectedItems = [];

  void addToCart(Map item) {
    setState(() {
      selectedItems.add(item);
    });
  }

  void buyItems() {
    print("Items in Cart:");
    for (var item in selectedItems) {
      print("Item Key: ${item['key']}, Value: ${item['value']}");
    }

    // Trigger the tickt_changes event
    socket.emit("tickt_changes", ["Item-3", json.encode(selectedItems)]);
  }

  @override
  Widget build(BuildContext context) {
    int trueValuesCount =
        mydata.where((element) => element['value'] == 'true').length;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.grey[350],
          child: Stack(
            children: [
              Positioned(
                left: 0.w,
                top: 0.h,
                child: Container(
                  width: 360.w,
                  height: 300.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/iPhone15ProMax.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20.w,
                top: 50.h,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_rounded),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 300.h,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 550.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "iPhone 15 Pro Max",
                            style: TextStyle(
                                fontSize: 30.r, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "5000 Ks / Tickets",
                            style: TextStyle(
                              fontSize: 20.r,
                              fontWeight: FontWeight.w800,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select Your Ticket",
                            style: TextStyle(
                                fontSize: 20.r, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "${trueValuesCount} Tickets Left",
                            style: TextStyle(
                                fontSize: 15.r, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 7,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        shrinkWrap: true,
                        children: List.generate(
                          mydata.length,
                          (index) {
                            return ItemCard(
                              onTap: () {
                                setState(() {
                                  if (selectedItems.contains(mydata[index])) {
                                    selectedItems.remove(mydata[index]);
                                  } else {
                                    selectedItems.add(mydata[index]);
                                  }
                                });
                              },
                              item: mydata[index],
                              isSelected: selectedItems.contains(mydata[index]),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 20.r,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20.h,
                left: 20.w,
                right: 20.h,
                child: ElevatedButton(
                  onPressed: () {
                    buyItems(); // Call the buyItems function to print the selected items
                  },
                  child: Text(
                    'Buy',
                    style: TextStyle(fontSize: 20.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Map item;
  final bool isSelected;
  final VoidCallback onTap;

  ItemCard({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    String value = item['value'] as String;
    String key = item['key'] as String;
    String extractedNumber = key.substring(key.lastIndexOf(':') + 1).trim();

    return GestureDetector(
      onTap:
          value == 'true' ? onTap : null, // Disable onTap if value is 'false'
      child: Card(
        color: value == 'true'
            ? (isSelected ? Colors.blue : Colors.white)
            : Colors.red, // Color set to red if value is 'false'
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$extractedNumber"),
            // Add additional fields as needed
          ],
        ),
      ),
    );
  }
}
