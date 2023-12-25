import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/widgets/language_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: 30,
              child: Image.asset('assets/images/ticketTrail.png'),
            ),
            Spacer(),
            Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Select Your Language',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomLanguageWidget(onTap: () {}, languageText: "Sinhala"),
                  CustomLanguageWidget(onTap: () {}, languageText: "English"),
                  CustomLanguageWidget(onTap: () {}, languageText: "Tamil"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
