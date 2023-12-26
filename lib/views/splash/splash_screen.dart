import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/language_provider.dart';
import 'package:tickettrail/widgets/language_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

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
              child: Consumer(
                builder: (BuildContext context,
                        LanguageProvider languageProvider, Widget? child) =>
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Select Your Language',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomLanguageWidget(
                        onTap: () {
                          languageProvider.selectLanguage('sinhala');
                          print(languageProvider.language);
                        },
                        languageText: "Sinhala"),
                    CustomLanguageWidget(
                        onTap: () {
                          languageProvider.selectLanguage('english');
                          print(languageProvider.language);
                        },
                        languageText: "English"),
                    CustomLanguageWidget(
                        onTap: () {
                          languageProvider.selectLanguage('tamil');
                          print(languageProvider.language);
                        },
                        languageText: "Tamil"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
