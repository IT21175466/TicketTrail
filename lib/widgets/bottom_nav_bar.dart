import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/bottom_navbar_provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (BuildContext context,
          BottomNavBarProvider bottomNavigationProvider, Widget? child) {
        return BottomNavigationBar(
          currentIndex: bottomNavigationProvider.currentIndex,
          onTap: (index) {
            bottomNavigationProvider.setIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.badge_outlined,
              ),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
              ),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "My Info",
            ),
          ],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          selectedIconTheme: IconThemeData(
            color: Colors.blueAccent,
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            color: AppColors.textColor,
          ),
          elevation: 20.0,
        );
      },
    );
  }
}
