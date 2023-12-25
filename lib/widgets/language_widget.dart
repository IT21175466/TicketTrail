import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tickettrail/constants/app_colors.dart';

class CustomLanguageWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String languageText;

  CustomLanguageWidget({
    required this.onTap,
    required this.languageText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.borderColor,
          ),
        ),
        child: Center(
          child: Text(
            languageText,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
