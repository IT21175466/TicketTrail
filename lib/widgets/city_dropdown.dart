import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searchfield/searchfield.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/city_select_provider.dart';

class CityDropdown extends StatelessWidget {
  final String labelText;
  final Widget icon;
  final TextEditingController controller;

  const CityDropdown({
    super.key,
    required this.labelText,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    List<String> suggestions =
        Provider.of<CitySelectProvider>(context).suggestions;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      child: Column(
        children: [
          Container(
            child: SearchField(
              controller: controller,
              searchInputDecoration: InputDecoration(
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
              suggestions: suggestions
                  .map((e) => SearchFieldListItem(e, child: Text(e)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
