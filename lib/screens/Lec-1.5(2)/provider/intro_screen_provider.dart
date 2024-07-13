import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../main.dart';
import '../../Lec-1.4/view/change_theme.dart';

class IntroScreenProvider extends ChangeNotifier {
  bool isHome = false;
  late SharedPreferences sharedPreferences;

  void checkIsHome() {
    isHome = true;
    setPreferencesIsHome(isHome);
    notifyListeners();
  }

  Future<void> setPreferencesIsHome(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('home', value);
  }

  IntroScreenProvider(bool isHomed){
    isHome = isHomed;
    notifyListeners();
  }
}