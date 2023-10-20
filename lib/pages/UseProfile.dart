// ignore_for_file: empty_statements, file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rafflix/utils/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late Map<String, dynamic> userData = {};

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<String?> getStoredCookie() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('cookie');
  }

  Future<void> getUserData() async {
    const url =
        "https://rafflixbackgroundsevice.onrender.com/profile"; // Replace with your server URL
    final storedCookie =
        await getStoredCookie(); // Retrieve the stored cookie from local storage

    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Cookie': storedCookie ?? ''},
    );

    if (response.statusCode == 200) {
      setState(() {
        final Map<String, dynamic> parsedData = json.decode(response.body);
        userData = {
          'name': parsedData['name'] ?? '',
          'phone': parsedData['_id'] ?? '',
          'profile': parsedData['profile'] ?? '',
          // Add other required fields similarly
        };
      });
    } else {
      throw Exception('Failed to load user data');
    }
  }

  Future<void> logOut() async {
    const url =
        "https://rafflixbackgroundsevice.onrender.com/logout"; // Replace with your server logout URL
    final storedCookie = await getStoredCookie();

    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Cookie': storedCookie ?? ''},
    );

    print("Logout URL: $url");

    if (response.statusCode == 200) {
      // Clear the stored cookie in the shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('cookie');
      // Perform any additional actions needed upon successful logout
      print("Logout successful");
    } else {
      print("Logout failed");
      throw Exception('Failed to log out');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 35,
          ),
          userTile(),
          divider(),
          colorTiles(),
          divider(),
          bwTiles(),
          ElevatedButton(
            onPressed: () {
              logOut(); // Call the logout function when the button is pressed
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 3),
    );
  }

  Widget userTile() {
    String profileBase64 = userData['profile'] ??
        ""; // Assuming the profile is provided as a base64 string
    return ListTile(
      leading: profileBase64.isNotEmpty
          ? CircleAvatar(
              backgroundImage: MemoryImage(base64.decode(profileBase64)),
            )
          : const CircleAvatar(
              child: Icon(Icons.person),
            ),
      title: Txt(
        text: userData['name'] ?? "User Name",
        fontWeight: FontWeight.bold,
      ),
      subtitle: Txt(text: userData['phone'] ?? "Phone Number"),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
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
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color:
              blackandWhite ? const Color(0xfff3f4fe) : color.withOpacity(0.10),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Icon(
          icon,
          color:
              blackandWhite ? const Color(0xfff3f4fe) : color.withOpacity(0.10),
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
    );
  }
}

class Txt extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;

  // Make the fontWeight parameter optional with a default value
  const Txt(
      {super.key, required this.text, this.fontWeight = FontWeight.normal});

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
