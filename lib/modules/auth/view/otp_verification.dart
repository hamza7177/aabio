import 'package:corrier/modules/auth/view/pin_code_screen.dart';
import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/registration_controller.dart';
import '../widgets/app_button.dart';

class OtpVerification extends StatelessWidget {
  final RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'OTP Verification',
          style: AppTextStyle.mediumGrey12.copyWith(color: AppColors.primary),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              Image.asset(
                'assets/images/logo_color.png',
                width: 100.w,
                height: 30.h,
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Create your account',
                    style: AppTextStyle.regularGrey14,
                  ),
                  Text(
                    '2/2',
                    style: AppTextStyle.mediumBlack14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text('SMS verification', style: AppTextStyle.mediumBlack16),
              SizedBox(height: 20.h),
              AppTextField(
                labelText: '+33',
                keyboardType: TextInputType.phone,
                controller: controller.nameController,
              ),

              SizedBox(height: 10.h),
              Text(
                '*An SMS notification will be sent to validate your phone number',
                style: AppTextStyle.regularGrey12,
                // Updated to use AppTextStyle
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20.h),
              CustomButton(text: 'Next', onPressed: (){
                Get.to(()=> PinCodeScreen());
              }),
              SizedBox(height: 20.h),
              // Added to ensure bottom content is scrollable
            ],
          ),
        ),
      ),
    );
  }
}
