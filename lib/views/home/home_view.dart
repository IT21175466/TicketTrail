import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/providers/bottom_navbar_provider.dart';
import 'package:tickettrail/widgets/bottom_nav_bar.dart';
import 'package:tickettrail/widgets/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
              BottomNavBarProvider bottomNavigationProvider, Widget? child) =>
          Scaffold(
        appBar: CustomAppBar(
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          () {},
        ),
        body: IndexedStack(
          index: bottomNavigationProvider.currentIndex,
          children: bottomNavigationProvider.pages,
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
