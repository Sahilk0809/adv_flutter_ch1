import 'package:adv_flutter_ch1/routes/routes.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.2/view/stepper.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.4/provider/change_theme_screen_provider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.4/view/change_theme.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/provider/intro_screen_provider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/view/introscreen/introscreen.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5/provider/homeprovider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5/view/homesceen/homescreen.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.6/provider/url_launcher_provider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.6/view/url_launcher_screen.dart';
import 'package:adv_flutter_ch1/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool theme = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  theme = sharedPreferences.getBool('theme') ?? false;
  isHomed = sharedPreferences.getBool('home') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChangeThemeScreenProvider(theme),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroScreenProvider(isHomed),
        ),
        ChangeNotifierProvider(
          create: (context) => UrlLauncherProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ChangeThemeScreenProvider changeThemeScreenProviderTrue =
        Provider.of<ChangeThemeScreenProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UrlLauncherScreen(),
      theme: changeThemeDataToLight,
      darkTheme: changeThemeDataToDark,
      themeMode: changeThemeScreenProviderTrue.isDark
          ? ThemeMode.dark
          : ThemeMode.light,
    );

    // return ChangeNotifierProvider(
    //   create: (context) => IntroScreenProvider(),
    //   builder: (context, child) => const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: IntroScreen(),
    //   ),
    // );

    // return ChangeNotifierProvider(
    //   create: (context) => HomeProvider(),
    //   builder: (context, child) => const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: HomeScreen(),
    //   ),
    // );
  }
}
