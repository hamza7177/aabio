import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';

class ProPartnerScreen extends StatelessWidget {
  const ProPartnerScreen({super.key});

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Become a pro partner',
              style: AppTextStyle.boldBlack22.copyWith(
                color: AppColors.darkGrey,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Are you a Professional Gp?',
              style: AppTextStyle.mediumBlack18,
            ),
            SizedBox(height: 20.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: AppColors.white, size: 15.sp),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Text(
                    'Become a preferred partner and find customers quickly',
                    style: AppTextStyle.regularBlack14.copyWith(color: AppColors.greyShade)
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: AppColors.white, size: 15.sp),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Text(
                      'Find retailers across Africa and Europe',
                      style: AppTextStyle.regularBlack14.copyWith(color: AppColors.greyShade)
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: AppColors.white, size: 15.sp),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Text(
                      'Boost your listings and make it easier to group your packages',
                      style: AppTextStyle.regularBlack14.copyWith(color: AppColors.greyShade)
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: AppColors.white, size: 15.sp),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Text(
                      'Offer great rates',
                      style: AppTextStyle.regularBlack14.copyWith(color: AppColors.greyShade)
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: AppColors.white, size: 15.sp),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Text(
                      'Optional delivery service *',
                      style: AppTextStyle.regularBlack14.copyWith(color: AppColors.greyShade)
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
            Text(
              'This service is reserved for all professionals sending parcels by plane, train or boat.',
              style: AppTextStyle.mediumPrimary14
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Column(
                children: [
                  SmallButton(text: 'Send Email', onPressed: () {}),
                  SizedBox(height: 10.h),
                  SmallButton(text: 'Write on WhatsApp', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
