import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        dividerColor: Colors.transparent,
      ),
      initialRoute: '/splash',
      routes: AppRoutes.getRoutes(),
    );
  }
}
