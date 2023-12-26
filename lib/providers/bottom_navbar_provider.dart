import 'package:flutter/material.dart';
import 'package:tickettrail/views/home/home_page.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    Center(
      child: Text("Business"),
    ),
    Center(
      child: Text("Notifications"),
    ),
    Center(
      child: Text("My Info"),
    ),
  ];

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
