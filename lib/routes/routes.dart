import 'package:adv_flutter_ch1/main.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.4/view/change_theme.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/view/introscreen/introscreen.dart';
import 'package:flutter/material.dart';

import '../screens/Lec-1.2/view/stepper.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => isHomed ? const ChangeTheme() : const IntroScreen(),
    '/theme' : (context) => const ChangeTheme(),
    '/stepper' : (context) => const StepperExample(),
  };
}