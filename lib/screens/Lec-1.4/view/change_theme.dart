import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/change_theme_screen_provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    ChangeThemeScreenProvider changeThemeScreenProviderTrue =
        Provider.of<ChangeThemeScreenProvider>(context, listen: true);
    ChangeThemeScreenProvider changeThemeScreenProviderFalse =
        Provider.of<ChangeThemeScreenProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Icon(Icons.add_circle_outline),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const CircleAvatar(
                radius: 80,
              ),
              const Text(
                'Sahil',
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeScreenProviderFalse
                          .changeThemeDataToLight()
                          .colorScheme
                          .primary
                      : changeThemeScreenProviderFalse
                          .changeThemeDataToDark()
                          .colorScheme
                          .primary,
                ),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Switch(
                  onChanged: (value) {
                    changeThemeScreenProviderTrue.isDark = value;
                  },
                  value: changeThemeScreenProviderTrue.isDark,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.grid_4x4,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeScreenProviderFalse
                          .changeThemeDataToLight()
                          .colorScheme
                          .onPrimary
                      : changeThemeScreenProviderFalse
                          .changeThemeDataToDark()
                          .colorScheme
                          .onPrimary,
                ),
                title: const Text(
                  'Story',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeScreenProviderFalse
                          .changeThemeDataToLight()
                          .colorScheme
                          .secondary
                      : changeThemeScreenProviderFalse
                          .changeThemeDataToDark()
                          .colorScheme
                          .secondary,
                ),
                title: const Text(
                  'Settings and Privacy',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.message_outlined,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeScreenProviderFalse
                          .changeThemeDataToLight()
                          .colorScheme
                          .onSecondary
                      : changeThemeScreenProviderFalse
                          .changeThemeDataToDark()
                          .colorScheme
                          .onSecondary,
                ),
                title: const Text(
                  'Help Center',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeScreenProviderFalse
                          .changeThemeDataToLight()
                          .colorScheme
                          .primary
                      : changeThemeScreenProviderFalse
                          .changeThemeDataToDark()
                          .colorScheme
                          .primary,
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
