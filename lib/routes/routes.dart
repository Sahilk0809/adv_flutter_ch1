import 'package:adv_flutter_ch1/main.dart';
import 'package:adv_flutter_ch1/screens/stepper/stepper.dart';

class MyRoutes{
  static Map myRoutes = {
    '/' : (context) => const MyApp(),
    '/stepper' : (context) => const StepperExample(),
  };
}