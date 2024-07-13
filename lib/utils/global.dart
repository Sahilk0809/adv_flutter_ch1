import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/Lec-1.4/view/change_theme.dart';
import '../screens/Lec-1.5(2)/provider/intro_screen_provider.dart';

bool isDark = false;
var txtAccount = TextEditingController();
var txtAddress = TextEditingController();
var txtContact = TextEditingController();
int index = 0;
bool isGrid = false;