import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/city_select_provider.dart';
import 'package:tickettrail/providers/language_provider.dart';
import 'package:tickettrail/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(create: (context) => CitySelectProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          fontFamily: 'Poppins',
        ),
        initialRoute: '/home',
        routes: AppRoutes.getRoutes(),
      ),
    );
  }
}
