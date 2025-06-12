import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../customer/dashboard/views/bottom_nav.dart';
import '../controller/login_controller.dart';
import '../widgets/app_button.dart' show AppButton;

class LoginScreen extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text('', style: AppTextStyle.mediumGrey12),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Text('Log in to your account', style: AppTextStyle.mediumGrey20),
            SizedBox(height: 20.h),
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
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: AppTextStyle.mediumBlack14.copyWith(
                    color: AppColors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Spacer(),
            AppButton(text: 'Login', onPressed: controller.login),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed:
                    () => Get.to(
                      () => BottomNav(pageIndex: 0, isFromLogin: false),
                    ),
                child: Text("Continue as a guest", style: AppTextStyle.mediumBlack14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
