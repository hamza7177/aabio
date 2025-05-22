import 'package:corrier/modules/auth/view/profile_verification/profile_verification_step1.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/app_button.dart';

class ValidationSuccessScreen extends StatelessWidget {
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
                      'Validated Phone Number',
                      style: AppTextStyle.mediumBlack16,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Submit your documents to validate your profile',
              style: AppTextStyle.regularGrey14,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: 'Start verification',
              onPressed: () {
                Get.to(()=> ProfileVerificationStep1Screen());
              },
            ),
            SizedBox(height: 10.h),
            OutlinedButton(
              onPressed: () {
                // Handle Start Plutard action
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
              ),
              child: Text('Start Plutard', style: AppTextStyle.mediumBlack14),
            ),
          ],
        ),
      ),
    );
  }
}
