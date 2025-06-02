import 'package:corrier/modules/auth/view/validate_succesful.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/app_button.dart';

class PinCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text('Enter PIN', style: AppTextStyle.mediumBlack14),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Enter verification code',
              style: AppTextStyle.regularGrey16,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false, // Set to true if you want dots instead of numbers
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(20.r),
                fieldHeight: 80.h,
                fieldWidth: 57.w,
                activeFillColor: AppColors.lightGrey2,
                inactiveFillColor: AppColors.lightGrey2,
                selectedFillColor: AppColors.lightGrey2,
                activeColor: AppColors.grey,
                inactiveColor: AppColors.grey,
                selectedColor: AppColors.primary,
                borderWidth: 0.0,
              ),
              cursorColor: AppColors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              onChanged: (value) {
                // Handle PIN changes if needed
                print('PIN: $value');
              },
              onCompleted: (value) {
                // Handle when all 4 digits are entered
                print('PIN completed: $value');
              },
            ),
            SizedBox(height: 20.h),
            AppButton(text: 'Next', onPressed: (){
              Get.to(()=> ValidationSuccessScreen());
            }),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}