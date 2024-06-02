import 'package:crud_flutter/src/shared/shared_pref.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  SharedPref pref = SharedPref();

  bool _darkMode = false;

  bool get darkMode => _darkMode;

  bool changeTheme() {
    _darkMode = !_darkMode;
    pref.setThemeMode(darkMode);
    notifyListeners();
    return darkMode;
  }
}
