import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
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
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grayColor,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Harhsha Travels',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Route - 98',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textColor,
                              ),
                            ),
                            Text(
                              'Colombo to Ampara',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textColor,
                              ),
                            ),
                            Text(
                              'Rs. 1,243.50',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: screenWidth,
                    color: AppColors.grayColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Colombo',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'At',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '5.50 AM',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bus Type',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Normal',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'Available Seats',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.textColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '34',
                              style: TextStyle(
                                fontSize: 32,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: screenWidth,
                    color: AppColors.grayColor,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.1',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Book Seat',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
