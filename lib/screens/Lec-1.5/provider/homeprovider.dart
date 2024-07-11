import 'package:adv_flutter_ch1/screens/Lec-1.5/view/homesceen/homescreen.dart';
import 'package:flutter/material.dart';
import '../../../utils/list.dart';

class HomeProvider extends ChangeNotifier {
  String? quote;
  String? author;

  void addDetailsInProvider() {
    quote = txtQuote.text;
    author = txtAuthor.text;
  }

  void addQuoteInList() {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void removeQuoteAtIndex(int index) {
    quoteList.removeAt(index);
    notifyListeners();
  }
}
