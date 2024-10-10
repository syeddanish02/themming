import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class darkthemeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode themeMode) {
    if (_themeMode != themeMode) { // Only notify if the theme has changed
      _themeMode = themeMode;
      notifyListeners();
    }
  }
}
