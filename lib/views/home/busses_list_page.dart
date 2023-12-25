import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/widgets/bus_card.dart';
import 'package:tickettrail/widgets/custom_app_bar.dart';
import 'package:tickettrail/widgets/custom_text_filed.dart';

class BusListPage extends StatefulWidget {
  const BusListPage({super.key});

  @override
  State<BusListPage> createState() => _BusListPageState();
}

class _BusListPageState extends State<BusListPage> {
  final TextEditingController sampleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        () {},
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            CustomTextField(
              controller: sampleController,
              labelText: 'From',
              icon: Icon(
                Icons.location_on,
                color: AppColors.grayColor,
              ),
            ),
            CustomTextField(
              controller: sampleController,
              labelText: 'To',
              icon: Icon(
                Icons.location_on,
                color: AppColors.grayColor,
              ),
            ),
            CustomTextField(
              controller: sampleController,
              labelText: 'Date',
              icon: Icon(
                Icons.calendar_month,
                color: AppColors.grayColor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BusCard(
              busName: 'Harsha Travels',
              route: '98',
              to: 'Ampara',
              from: 'Colombo',
              time: '5.50 AM',
              busType: 'Normal',
              ticketPrice: 1243.52,
              seats: 34,
              rating: 4.1,
            ),
          ],
        ),
      ),
    );
  }
}
