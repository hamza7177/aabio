import 'package:corrier/modules/auth/view/profile_verification/profile_verification_step3.dart';
import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';

class ProfileVerificationStep2Screen extends StatelessWidget {
  final TextEditingController idController = TextEditingController();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Choose your room',
                style: AppTextStyle.mediumBlack16.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.h),
              Text(
                'Mandatory to access our services for booking or selling kilos',
                style: AppTextStyle.regularGrey14,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20.h),
              AppTextField(
                labelText: 'Select ID',
                controller: idController,
                suffixIcon: Icon(Icons.arrow_drop_down, color: AppColors.grey),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0.w,
                  horizontal: 20.0.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey2,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  children: [
                    Icon(Icons.camera_alt, size: 20.sp, color: AppColors.grey),
                    SizedBox(width: 10.w),
                    Text(
                      'Take a selfie',
                      style: AppTextStyle.mediumBlack16,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                '*Photo required to take a photo of your face',
                style: AppTextStyle.regularGrey12,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20.h),
              AppButton(
                text: 'Validate',
                onPressed: () {
                  Get.to(() => ProfileVerificationStep3Screen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
