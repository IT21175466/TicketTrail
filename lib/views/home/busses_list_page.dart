import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/city_select_provider.dart';
import 'package:tickettrail/widgets/bus_card.dart';
import 'package:tickettrail/widgets/custom_app_bar.dart';

class BusListPage extends StatefulWidget {
  const BusListPage({super.key});

  @override
  State<BusListPage> createState() => _BusListPageState();
}

class _BusListPageState extends State<BusListPage> {
  final TextEditingController fromController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        () {},
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Consumer(
            builder: (BuildContext context,
                    CitySelectProvider citySelectProvider, Widget? child) =>
                Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.grayColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("From  "),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        citySelectProvider.cityFrom!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.grayColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "To       ",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        citySelectProvider.cityTo!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: AppColors.grayColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Date   ",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        citySelectProvider.formattedDate!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
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
        ),
      ),
    );
  }
}
