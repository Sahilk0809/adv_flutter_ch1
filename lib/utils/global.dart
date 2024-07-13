import 'package:flutter/material.dart';

bool isDark = false;
var txtAccount = TextEditingController();
var txtAddress = TextEditingController();
var txtContact = TextEditingController();
int index = 0;
bool isGrid = false;

List data = [
  {
    'img': 'asset/girl.png',
    'text1': 'Brows',
    'text2': 'App',
    'text3': 'and Order Now',
    'text4': 'We have many recipes for you',
    'text5': 'Go and select food what you want',
  },
  {
    'img': 'asset/hakkaNoddle.jpg',
    'text1': 'Best',
    'text2': 'Delicious',
    'text3': 'Food in our Area',
    'text4': 'We provide best food to our',
    'text5': 'customer healthy and organic',
  },
  {
    'img': 'asset/chicken.jpg',
    'text1': 'We Provide',
    'text2': 'Fast',
    'text3': 'Food service',
    'text4': 'We provide organic food service',
    'text5': 'our customer from anywhere',
  },
];