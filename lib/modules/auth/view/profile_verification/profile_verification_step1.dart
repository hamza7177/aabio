import 'package:corrier/modules/auth/view/profile_verification/profile_verifcation_step2.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';


class ProfileVerificationStep1Screen extends StatelessWidget {
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
          'Profile Verification',
          style: AppTextStyle.mediumBlack14.copyWith(color: AppColors.primary,fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Supporting documents',
              style: AppTextStyle.mediumBlack16,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15.h),
            Text(
              'The following documents will be requested:\n'
                  '• National Identity Card\n'
                  '• Selfie (Photo of your face)',
              style: AppTextStyle.regularBlack14,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40.h),
            Text(
              '*Only valid originals are accepted (no photocopies or declaration of loss)',
              style: AppTextStyle.mediumBlack16,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20.h),
            Spacer(),
            CustomButton(
              text: 'Start verification',
              onPressed: () {
                Get.to(() => ProfileVerificationStep2Screen());
              },
            ),
            SizedBox(height: 5.h),
            Padding(
              padding:  EdgeInsets.only(left: 8.0.w,right: 8.0.w),
              child: OutlinedButton(
                onPressed: () {
                  // Handle Start Plutard action
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
                ),
                child: Text(
                  'Start Plutard',
                  style: AppTextStyle.mediumBlack14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}