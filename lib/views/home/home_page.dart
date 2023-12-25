import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickettrail/constants/app_colors.dart';
import 'package:tickettrail/providers/city_select_provider.dart';
import 'package:tickettrail/widgets/city_dropdown.dart';
import 'package:tickettrail/widgets/custom_app_bar.dart';
import 'package:tickettrail/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController sampleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<CitySelectProvider>(context, listen: false).getTodayDate();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController fromController = TextEditingController();
    final TextEditingController toController = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        Icon(
          Icons.menu,
          color: Colors.white,
        ),
        () {},
      ),
      body: SingleChildScrollView(
        child: Consumer(
          builder: (BuildContext context, CitySelectProvider citySelectProvider,
                  Widget? child) =>
              Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                color: AppColors.primaryColor,
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Chamath,',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Let’s try a booking with TicketTrail!',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grayColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    CityDropdown(
                      labelText: 'From',
                      icon: Icon(
                        Icons.location_on,
                        color: AppColors.grayColor,
                      ),
                      controller: fromController,
                    ),
                    CityDropdown(
                      labelText: 'To',
                      icon: Icon(
                        Icons.location_on,
                        color: AppColors.grayColor,
                      ),
                      controller: toController,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.grayColor,
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: AppColors.grayColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Date - "),
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
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (fromController.text.isEmpty ||
                            toController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please Select Locations"),
                            ),
                          );
                        } else {
                          citySelectProvider
                              .setCityFromValue(fromController.text);
                          citySelectProvider.setCitytoValue(toController.text);
                          Navigator.pushNamed(context, '/results');
                        }
                      },
                      child: CustomButton(
                        text: 'Search Bus',
                        height: 55,
                        width: screenWidth,
                        backgroundColor: AppColors.buttonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
