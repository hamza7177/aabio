import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/registration_controller.dart';
import '../widgets/app_button.dart';
import 'otp_verification.dart';

class RegistrationScreen extends StatelessWidget {
  final RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Create your account', style: AppTextStyle.regularGrey14),
                  Text(
                    '1/2',
                    style: AppTextStyle.mediumBlack14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text('Personal information', style: AppTextStyle.mediumBlack16),
              Text(
                'In the event of non-compliance with the verification process, we cannot guarantee your parcel deliveries (insurance, security, tracking)',
                style: AppTextStyle.regularGrey14,
              ),
              SizedBox(height: 20.h),
              AppTextField(
                labelText: 'Name',
                controller: controller.nameController,
              ),
              AppTextField(
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                controller: controller.emailController,
              ),
              AppTextField(
                labelText: 'Password',
                controller: controller.passwordController,
                obscureText: true,
              ),
              AppTextField(
                labelText: 'Password confirmation',
                controller: controller.confirmPasswordController,
                obscureText: true,
              ),
              SizedBox(height: 10.h),
              Text(
                'By continuing you agree to our terms and conditions as well as our privacy policy',
                style: AppTextStyle.regularGrey12, // Updated to use AppTextStyle
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              CustomButton(text: 'Next', onPressed: (){
                Get.to(()=> OtpVerification());
              }),
              SizedBox(height: 20.h), // Added to ensure bottom content is scrollable
            ],
          ),
        ),
      ),
    );
  }
}