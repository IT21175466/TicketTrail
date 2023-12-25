import 'package:flutter/material.dart';

class CitySelectProvider extends ChangeNotifier {
  List<String> suggestions = ['Ampara', 'Colombo', 'Kandy', 'Negambo'];

  String? cityFrom;
  String? cityTo;

  void setCityFromValue(String value) {
    cityFrom = value;
    notifyListeners();
  }

  void setCitytoValue(String value) {
    cityTo = value;
    notifyListeners();
  }
}
