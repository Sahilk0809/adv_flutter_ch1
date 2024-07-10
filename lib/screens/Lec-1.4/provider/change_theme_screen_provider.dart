import 'package:flutter/material.dart';

class ChangeThemeScreenProvider extends ChangeNotifier {
  bool isDark = true;

  void themeChange() {
    isDark = !isDark;
    notifyListeners();
  }

  ThemeData changeThemeDataToLight() {
   return ThemeData(
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

  ThemeData changeThemeDataToDark(){
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.amber,
        onPrimary: Colors.blue,
        secondary: Colors.pink,
        onSecondary: Colors.amberAccent,
        error: Colors.red,
        onError: Colors.redAccent,
        surface: Colors.amber,
        onSurface: Colors.white,
      ),
    );
  }
}
