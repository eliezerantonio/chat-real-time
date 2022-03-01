import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  
  static  SharedPreferences prefs;

  static Future<void> configurePrefs() async {
    prefs = await SharedPreferences?.getInstance();
  }
}
