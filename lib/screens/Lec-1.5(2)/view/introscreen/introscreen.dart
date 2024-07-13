import 'package:adv_flutter_ch1/screens/Lec-1.4/view/change_theme.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/provider/intro_screen_provider.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/view/introscreen/introscreen2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../main.dart';
import '../../../../utils/global.dart';
import '../../component/component.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                introScreen(
                  height,
                  width,
                  data[index]['img'],
                  data[index]['text1'],
                  data[index]['text2'],
                  data[index]['text3'],
                  data[index]['text4'],
                  data[index]['text5'],
                  context,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntroScreen2(),
                      ),
                    );
                  },
                  Colors.amber,
                  Colors.grey,
                  Colors.grey,
                  'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
