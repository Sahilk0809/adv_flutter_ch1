import 'package:adv_flutter_ch1/main.dart';

import '../screens/Lec-1.2/view/stepper.dart';

class MyRoutes{
  static Map myRoutes = {
    '/' : (context) => const MyApp(),
    '/stepper' : (context) => const StepperExample(),
  };
}