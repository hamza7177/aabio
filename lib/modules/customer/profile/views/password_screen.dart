import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_textfield.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});

  final phoneController = TextEditingController();
  final newPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: AppTextStyle.mediumBlack16.copyWith(
                  color: AppColors.greyShade,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Old Password',
                style: AppTextStyle.mediumBlack14
              ),
              SizedBox(height: 10.h,),
              AppTextField(
                labelText: '********',
                keyboardType: TextInputType.phone,
                controller: phoneController,
              ),
              SizedBox(height: 20.h),
              Text(
                'New Password',
                style: AppTextStyle.mediumBlack14
              ),
              SizedBox(height: 10.h,),
              AppTextField(
                labelText: '********',
                keyboardType: TextInputType.phone,
                controller: newPasswordController,
              ),
              SizedBox(height: 20.h),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
          child: SmallButton(text: 'Save', onPressed: () {}),
        ),
      ),
    );
  }
}
