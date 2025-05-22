import 'package:corrier/modules/auth/view/login_screen.dart';
import 'package:corrier/modules/auth/view/registration_screen.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Text('', style: AppTextStyle.mediumGrey12),
          bottom: TabBar(
            labelStyle: AppTextStyle.mediumBlack14,
            unselectedLabelStyle: AppTextStyle.regularGrey12,
            indicatorColor: AppColors.primary,
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.grey,
            tabs: [
              Tab(text: 'Sign In'),
              Tab(text: 'Registration'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginScreen(),
            RegistrationScreen(),
          ],
        ),
      ),
    );
  }
}