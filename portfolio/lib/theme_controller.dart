import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool isDarkTheme = false;

  void toggleDarkTheme() {
    isDarkTheme = !isDarkTheme;

    notifyListeners();
  }
}
