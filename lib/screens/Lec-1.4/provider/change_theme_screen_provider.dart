import 'package:flutter/material.dart';

class ChangeThemeScreenProvider extends ChangeNotifier {
  bool isDark = false;

  bool themeChange() {
    notifyListeners();
   return isDark = !isDark;
  }

  ThemeData changeThemeDataToLight = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.purple,
      onPrimary: Colors.green,
      secondary: Colors.blue,
      onSecondary: Colors.deepOrangeAccent,
      error: Colors.red,
      onError: Colors.redAccent,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );

  ThemeData changeThemeDataToDark = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.amber,
      onPrimary: Colors.blue,
      secondary: Colors.pink,
      onSecondary: Colors.yellowAccent,
      error: Colors.red,
      onError: Colors.redAccent,
      surface: Colors.black,
      onSurface: Colors.white,
    ),
  );
}
