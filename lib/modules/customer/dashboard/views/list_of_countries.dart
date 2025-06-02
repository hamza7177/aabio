import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart' show AppColors;
import '../../../auth/widgets/app_button.dart';


class ListOfCountries extends StatelessWidget {
  const ListOfCountries({super.key});

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          Text(
            'List of available countries',
            style: AppTextStyle.mediumPrimary18.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Send your various packages and documents\nto all the countries below',
            style: AppTextStyle.mediumBlack14,
          ),
          SizedBox(height: 10.h),
          Text(
            'Aabio promises you a simple, fast and secure experience.',
            style: AppTextStyle.mediumBlack14,
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/icons/eu.png', width: 90.w, height: 90.h),
                  Text('EU', style: AppTextStyle.mediumBlack14),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icons/italy.png',
                    width: 90.w,
                    height: 90.h,
                  ),
                  Text('ITALY', style: AppTextStyle.mediumBlack14),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icons/red_flag.png',
                    width: 90.w,
                    height: 90.h,
                  ),
                  Text('Senegal', style: AppTextStyle.mediumBlack14),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icons/germany.png',
                    width: 90.w,
                    height: 90.h,
                  ),
                  Text('Mali', style: AppTextStyle.mediumBlack14),
                ],
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.24.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: AppButton(text: 'Retour', onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
