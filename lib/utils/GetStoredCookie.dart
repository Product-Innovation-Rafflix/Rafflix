// ignore: file_names
import 'package:shared_preferences/shared_preferences.dart';

Future<String> getStoredCookie() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('cookie') ?? "";
}
