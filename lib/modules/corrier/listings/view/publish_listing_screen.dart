import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_text_style.dart';

class PublishListingScreen extends StatelessWidget {
  const PublishListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      children: [
        Center(
          child: Image.asset('assets/images/manwithcup.png', height: 200.h),
        ),
        // Add more widgets for Accepted requests here
        Center(child: Text('No upcoming reservations', style: AppTextStyle.boldBlack22)),
        Center(
          child: Text(
            'Anticipate your future trip with a listing',
            style: AppTextStyle.regularGrey14,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
