import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/app_button.dart';
import '../auth_screen.dart';


class ProfileVerificationStep4 extends StatelessWidget {
  const ProfileVerificationStep4({super.key});

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
          style: AppTextStyle.mediumBlack14.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w800,
          ),
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
                      'Your documents have been sent',
                      style: AppTextStyle.mediumBlack12,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Your profile is awaiting final validation',
                      style: AppTextStyle.regularGrey14,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              text: 'Back to homepage',
              onPressed: () {
                Get.to(()=> AuthScreen());
              },
            ),
            SizedBox(height: 10.h),

          ],
        ),
      ),
    );
  }
}
