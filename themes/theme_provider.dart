import 'package:flutter/material.dart';
import 'package:flutter_get_fit_app/themes/darkmode.dart';
import 'package:flutter_get_fit_app/themes/lightmode.dart';



class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = lightmode as ThemeMode; 
  ThemeMode _themeMode = darkMode as ThemeMode;

  ThemeMode get thememode => _themeMode; 

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}