// ignore_for_file: non_constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String THEME_MODE = "THEME_MODE";

  // Theme
  void setThemeMode(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(THEME_MODE, value);
  }

  Future<bool> getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_MODE) ?? false;
  }
}
