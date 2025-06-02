import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

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
        child: ListView(
          children: [
            Text(
              'Help Center',
              style: AppTextStyle.boldBlack22.copyWith(
                color: AppColors.darkGrey,
              ),
            ),
            SizedBox(height: 20.h),
            Text('How does Aabio work?', style: AppTextStyle.mediumBlack18),
            SizedBox(height: 20.h),
            Text("I am a customer", style: AppTextStyle.mediumBlack14),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "I'm looking for a guest to whom I'll entrust my packages.",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'I proceed with my registration and after verifying my profile, I send a request to the guest.',
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "After payment and the guest accepts my request, you'll be matched",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'I receive my unique validation code',
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'I meet with the guest to take inventory with them and hand over my packages.',
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'I inform the recipient of the package, the place of the exchange and I provide him with the validation code of the transaction.',
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
            Divider(),
            Text("I'm a guest", style: AppTextStyle.mediumBlack14),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "I create a three-minute account with my identity documents.",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "Once my profile is verified, I create a listing with all the information and my pickup terms",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "I set my price per kilo* *Prices are capped at a maximum of €12/kg",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "I choose the packages I want to carry",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "I meet with the customer and take inventory of their parcel in order to check all the items I need to transport",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    "Once the package is delivered to the recipient, I request payment via my guest account",
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: AppColors.greyShade,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SmallButton(text: 'Need Help', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
