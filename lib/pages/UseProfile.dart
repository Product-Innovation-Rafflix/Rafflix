// ignore_for_file: empty_statements

import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffff),
      body: ListView(
        padding: EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 35,
          ),
          userTile(),
          divider(),
          colorTiles(),
          divider(),
          bwTiles(),
        ],
      ),
    );
  }

  Widget userTile() {
    String url =
        "https://cdn.britannica.com/55/174255-050-526314B6/brown-Guernsey-cow.jpg";
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
      title: Txt(
        text: "Minn Htet Ko",
        fontWeight: FontWeight.bold,
      ),
      subtitle: Txt(text: "Lee Lee Lar Lar"),
    );
  }

  Widget divider() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        thickness: 1.5,
      ),
    );
  }

  Widget colorTiles() {
    return Column(
      children: [
        colorTile(Icons.person_outline, Colors.deepPurple, "Personal data",
            blackandWhite: false),
        colorTile(Icons.settings_outlined, Colors.blue, "Setting",
            blackandWhite: false),
        colorTile(Icons.credit_card, Colors.pink, "Payment",
            blackandWhite: false),
        colorTile(Icons.favorite_border, Colors.orange, "Personal data",
            blackandWhite: false),
      ],
    );
  }

  Widget bwTiles() {
    //Color color = Colors.blueGrey;

    return Column(
      children: [
        bwTile(Icons.info_outline, "FAQs"),
        bwTile(Icons.border_color_outlined, "Handbook"),
        bwTile(Icons.textsms_outlined, "Community"),
      ],
    );
  }

  Widget bwTile(IconData icon, String text) {
    return colorTile(icon, Colors.black, text, blackandWhite: true);
  }

  Widget colorTile(IconData icon, Color color, String text,
      {bool blackandWhite = false}) {
    return ListTile(
      leading: Container(
        child: Icon(
          icon,
          color: blackandWhite ? Color(0xfff3f4fe) : color.withOpacity(0.10),
        ),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: blackandWhite ? Color(0xfff3f4fe) : color.withOpacity(0.10),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
    );
  }
}

class Txt extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;

  // Make the fontWeight parameter optional with a default value
  Txt({required this.text, this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
      ),
    );
  }
}
