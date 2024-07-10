import 'package:adv_flutter_ch1/screens/Lec-1.2/view/stepper.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.4/provider/change_theme_screen_provider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.4/view/change_theme.dart';
import 'package:adv_flutter_ch1/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChangeThemeScreenProvider(),
        builder: (context, child) {
          ChangeThemeScreenProvider changeThemeScreenProviderTrue =
              Provider.of<ChangeThemeScreenProvider>(context, listen: true);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: changeThemeScreenProviderTrue.changeThemeDataToLight,
            darkTheme: changeThemeScreenProviderTrue.changeThemeDataToDark,
            themeMode: changeThemeScreenProviderTrue.isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const ChangeTheme(),
          );
        });
  }
}
