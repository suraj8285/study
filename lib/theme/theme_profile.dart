import 'package:flutter/material.dart';
import 'package:study/theme/dark_mode.dart';
import 'package:study/theme/ligth_mode.dart';

// Assuming this file defines DarkMode theme

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = DarkMode; // Initial theme set to light mode
  ThemeData get themeData => _themeData; // Getter uses lowercase 't'

  bool get isDarkMode =>
      _themeData ==
      DarkMode; // Corrected typo in 'DarkMode' and used lowercase 'isDarkMode'

  set themeData(ThemeData themeData) {
    // Setter uses lowercase 't'
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData =
          DarkMode; // Use 'themeData' setter here with corrected 'darkMode'
    } else {
      themeData = lightMode; // Use 'themeData' setter here
    }
  }
}
