import 'package:corrier/modules/auth/view/profile_verification/profile_verification_step1.dart';
import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../dashboard/view/corrier_bottomnav.dart';


class PublishSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.grey),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: Text(
          'Registration',
          style: AppTextStyle.mediumBlack14.copyWith(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 380.h,
              width: 395.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons/validate_icon.png',
                      width: 92.w,
                      height: 92.h,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Listing published',
                      style: AppTextStyle.mediumBlack16,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Thank you for your listing',
                      style: AppTextStyle.regularGrey14,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'You will be redirected to your dashboard to track your reservations',
              style: AppTextStyle.regularGrey14,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            SmallButton(
              text: 'Go to homepage',
              onPressed: () {
                Get.to(()=> CorrierBottomNav(pageIndex: 0,));
              },
            ),
            SizedBox(height: 10.h),

          ],
        ),
      ),
    );
  }
}
