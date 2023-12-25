import 'package:flutter/material.dart';
import 'package:tickettrail/views/home/busses_list_page.dart';
import 'package:tickettrail/views/home/home_page.dart';
import 'package:tickettrail/views/splash/splash_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/splash': (context) => SplashScreen(),
      '/home': (context) => HomePage(),
      '/results': (context) => BusListPage(),
    };
  }
}
