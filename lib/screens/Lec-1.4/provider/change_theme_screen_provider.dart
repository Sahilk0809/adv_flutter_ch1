import 'package:flutter/material.dart';

class ChangeThemeScreenProvider extends ChangeNotifier {
  bool isDark = false;

  void themeChange() {
    isDark = !isDark;
    notifyListeners();
  }

  void changeThemeData() {
    ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.purple,
        onPrimary: Colors.green,
        secondary: Colors.blue,
        onSecondary: Colors.deepOrangeAccent,
        error: Colors.red,
        onError: Colors.redAccent,
        surface: Colors.purple,
        onSurface: Colors.black,
      ),
    );
  }
}
