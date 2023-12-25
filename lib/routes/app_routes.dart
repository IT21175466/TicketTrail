import 'package:flutter/material.dart';
import 'package:tickettrail/views/splash/splash_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/splash': (context) => SplashScreen(),
    };
  }
}
