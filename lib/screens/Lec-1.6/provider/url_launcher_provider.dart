import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherProvider extends ChangeNotifier {
  void phoneLauncher() {
    Uri uri = Uri(scheme: 'tel', path: '+91 8153826814');
    launchUrl(uri);
  }

  void mailLauncher() {
    Uri uri = Uri.parse('mailto: rk4852115@gmail.com');
    launchUrl(uri);
  }
}
