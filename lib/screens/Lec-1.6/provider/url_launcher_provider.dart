import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherProvider extends ChangeNotifier{

  void phoneLauncher()
  {
    Uri uri = Uri.parse('tel: +91 8153826814');
    launchUrl(uri);
  }
  void mailLauncher()
  {
    Uri uri = Uri.parse('mailto: rk4852115@gmail.com');
    launchUrl(uri);
  }
  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/sahil-kashyap-125817298/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://www.instagram.com/sahil_kashyap_0809/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void gitLauncher()
  {
    Uri uri = Uri.parse('https://github.com/Sahilk0809');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }

}