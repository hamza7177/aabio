import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import 'listing_details_screen.dart';

class PastListingScreen extends StatelessWidget {
  const PastListingScreen({super.key});

  // Sample data for the list
  final List<Map<String, String>> pastListings = const [
    {
      'status': 'Completed',
      'date': 'Saturday, May 25',
      'location': 'Paris Dakar',
      'weight': '23kg',
    },
    {
      'status': 'Completed',
      'date': 'Friday, May 24',
      'location': 'London Rome',
      'weight': '15kg',
    },
    {
      'status': 'Completed',
      'date': 'Thursday, May 23',
      'location': 'Tokyo Osaka',
      'weight': '30kg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding:  EdgeInsets.all(16.0.w),
            leading: Text(
              pastListings[index]['status']!,
              style: AppTextStyle.mediumBlack14,
            ),
            title: Text(
              pastListings[index]['date']!,
              style: AppTextStyle.regularBlack14,
            ),
            subtitle: Text(
              pastListings[index]['location']!,
              style: AppTextStyle.regularGrey12,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pastListings[index]['weight']!,
                  style:  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                 GestureDetector(
                   onTap: (){
                     Get.to(()=> ListingDetailsScreen(
                       date: 'June 9, 2024',
                       from: 'Paris',
                       to: 'Dakar',
                       weight: '30 kg',
                       rate: '9 €/kg',
                       time: '12:30\nPM',
                     ));
                   },
                   child: Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.primary,
                    ),
                                   ),
                 ),
              ],
            ),
          );
        },
      ),
    );
  }
}