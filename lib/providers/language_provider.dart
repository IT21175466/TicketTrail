import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String? language;

  selectLanguage(String selected) {
    language = selected;
    notifyListeners();
  }
}
