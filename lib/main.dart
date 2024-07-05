import 'package:adv_flutter_ch1/utils/global.dart';
import 'package:flutter/material.dart';

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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.2,
                ),
                const Text(
                  'Yo Man!',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'It\'s simple example of dark theme',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = false;
                    });
                  },
                  child: lightDarkButton(
                      height, width, 'Light Mode', Colors.amber),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = true;
                    });
                  },
                  child:
                      lightDarkButton(height, width, 'Dark Mode', Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container lightDarkButton(double height, double width, text, color) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(25),
      height: height * 0.1,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
