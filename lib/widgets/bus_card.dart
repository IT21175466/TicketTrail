import 'package:flutter/material.dart';
import 'package:tickettrail/constants/app_colors.dart';

class BusCard extends StatelessWidget {
  final String busName;
  final String route;
  final String to;
  final String from;
  final String time;
  final String busType;
  final double ticketPrice;
  final int seats;
  final double rating;
  const BusCard(
      {super.key,
      required this.busName,
      required this.route,
      required this.to,
      required this.from,
      required this.time,
      required this.busType,
      required this.ticketPrice,
      required this.seats,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
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
                      busName,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Route - $route',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      '$from to $to',
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
                      'Rs. $ticketPrice',
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
                          from,
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
                          time,
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
                      busType,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          'Seats',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      seats.toString(),
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
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                      rating.toString(),
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
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
    );
  }
}
