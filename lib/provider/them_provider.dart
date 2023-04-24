
import 'package:currency_converter/modals/them_modals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemModal themdata = ThemModal(isDark: true);

  void changeTheme() {
    themdata.isDark = !themdata.isDark;
    notifyListeners();
  }
}