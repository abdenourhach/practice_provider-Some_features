import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  late int c = 0;

  counter() {
    c++;
    notifyListeners();
  }
}
