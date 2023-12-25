import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leadingIcon;
  final Function onTap;

  CustomAppBar(this.leadingIcon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingIcon,
      title: SizedBox(
        height: 20,
        child: Image.asset('assets/images/ticketTrail.png'),
      ),
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
