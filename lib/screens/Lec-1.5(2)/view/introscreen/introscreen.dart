import 'package:adv_flutter_ch1/screens/Lec-1.4/view/change_theme.dart';
import 'package:adv_flutter_ch1/screens/Lec-1.5(2)/provider/intro_screen_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../main.dart';
import '../../../../utils/global.dart';

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
            child: CarouselSlider.builder(
                itemCount: data.length,
                options: CarouselOptions(
                  aspectRatio: 9 / 20,
                ),
                itemBuilder: (context, index, realIndex) {
                  return introScreen(
                    height,
                    width,
                    data[index]['img'],
                    data[index]['text1'],
                    data[index]['text2'],
                    data[index]['text3'],
                    data[index]['text4'],
                    data[index]['text5'],
                    context,
                  );
                }),
          ),
        ),
      ),
    );
  }

  Column introScreen(double height, double width, String img, String text1,
      String text2, String text3, String text4, String text5, context) {
    var introScreenProviderFalse =
        Provider.of<IntroScreenProvider>(context, listen: false);
    return Column(
      children: [
        SizedBox(
          height: height * 0.09,
        ),
        SizedBox(
          height: height * 0.3,
          width: height * 0.3,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$text1 ',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          text3,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          text4,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text5,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            screenPass(height, width),
            screenPass(height, width),
            screenPass(height, width),
          ],
        ),
        SizedBox(
          height: height * 0.06,
        ),
        GestureDetector(
          onTap: () {
            introScreenProviderFalse.checkIsHome();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ChangeTheme(),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: height * 0.05,
            width: width * 0.5,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container screenPass(double height, double width) {
    return Container(
      height: height * 0.01,
      width: width * 0.07,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
