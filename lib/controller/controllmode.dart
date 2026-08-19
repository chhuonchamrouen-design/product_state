import 'package:flutter/material.dart';
class Controllmode extends ChangeNotifier {
  bool isDark = false;
  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
