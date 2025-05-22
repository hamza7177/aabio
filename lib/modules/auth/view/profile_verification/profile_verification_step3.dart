import 'package:corrier/modules/auth/view/profile_verification/profile_verification_step4.dart';
import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';

class ProfileVerificationStep3Screen extends StatelessWidget {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

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
                'Fill my address',
                style: AppTextStyle.mediumBlack16.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20.h),
              AppTextField(
                labelText: 'No.',
                controller: numberController,
                keyboardType: TextInputType.number,
              ),
              AppTextField(labelText: 'Street', controller: streetController),
              AppTextField(
                labelText: 'Zip Code',
                controller: zipCodeController,
                keyboardType: TextInputType.number,
              ),
              AppTextField(labelText: 'City', controller: cityController),
              AppTextField(labelText: 'Country', controller: countryController),
              SizedBox(height: 10.h),
              Text(
                'By continuing you agree to our terms and conditions as well as our privacy policy',
                style: AppTextStyle.regularGrey12,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: 'Next',
                onPressed: () {
                  Get.to(()=> ProfileVerificationStep4());
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
