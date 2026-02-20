import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  bool flag = false;
  void showsignupbutton() {
    flag = !flag;
    notifyListeners();
  }
}
