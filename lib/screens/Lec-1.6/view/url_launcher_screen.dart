import 'package:adv_flutter_ch1/screens/Lec-1.6/provider/url_launcher_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    UrlLauncherProvider urlLauncherProvider =
        Provider.of<UrlLauncherProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.account_circle,
          color: Colors.blue,
          size: 30,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'If you have any queries, get in touch with',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                'us. We will be happy to help you!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  urlLauncherProvider.phoneLauncher();
                },
                child: urlLauncherAll(
                  height,
                  width,
                  icon: const Icon(
                    Icons.phone_android,
                    color: Colors.blue,
                  ),
                  text: '+91 8153826814',
                ),
              ),
              GestureDetector(
                onTap: () {
                  urlLauncherProvider.mailLauncher();
                },
                child: urlLauncherAll(
                  height,
                  width,
                  icon: const Icon(
                    Icons.mail_outline,
                    color: Colors.blue,
                  ),
                  text: 'rk4852115@gmail.com',
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.06,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Social Media',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container urlLauncherAll(double height, double width,
      {required Icon icon, required String text}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: height * 0.08,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.blue,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: width * 0.06,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
