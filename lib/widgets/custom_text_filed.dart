import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final Widget icon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.grayColor,
              width: 0.5,
            ),
          ),
          prefixIcon: icon,
          labelText: labelText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        ),
      ),
    );
  }
}
