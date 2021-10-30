import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  static AppTheme instance = AppTheme();

  var isDartTheme = false;

  dartTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}






