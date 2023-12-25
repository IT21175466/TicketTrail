import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CitySelectProvider extends ChangeNotifier {
  List<String> suggestions = ['Ampara', 'Colombo', 'Kandy', 'Negambo'];

  String? cityFrom;
  String? cityTo;
  String? formattedDate;

  void setCityFromValue(String value) {
    cityFrom = value;
    notifyListeners();
  }

  void setCitytoValue(String value) {
    cityTo = value;
    notifyListeners();
  }

  void getTodayDate() {
    DateTime today = DateTime.now();
    formattedDate = DateFormat('dd MMMM, y').format(today);
  }
}
