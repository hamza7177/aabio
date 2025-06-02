import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../dashboard/view/enter_trip_screen.dart';

class UploadProofScreen extends StatelessWidget {
  const UploadProofScreen({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Proof of travel',
                  style: AppTextStyle.boldBlack22.copyWith(
                    color: AppColors.darkGrey,
                  ),
                ),
                Text(
                  '1/5',
                  style: AppTextStyle.mediumPrimary14.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text('Upload proof of travel', style: AppTextStyle.mediumBlack14),
            SizedBox(height: 20.h),
            Text(
              'In order to keep you and your guests safe, we need to make sure the guest is the person who posted the listing.',
              style: AppTextStyle.regularBlack14,
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              height: 178.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: AppColors.grey, width: 1.w),
              ),
              child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Download files here',style: AppTextStyle.regularGrey12,),
                    SizedBox(height: 10.h,),
                    Text('JPG, PNG, PDF files',style: AppTextStyle.regularGrey14,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                foregroundColor: Color(0xffEBEBEB),
               backgroundColor: Color(0xffEBEBEB),
                minimumSize: Size(double.infinity, 50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, color: Colors.black),
                  SizedBox(width: 10.w),
                  Text('Take a photo', style: AppTextStyle.regularBlack14),
                ],
              ),
            ),
            Spacer(),
            SmallButton(text: 'Next', onPressed: () {
              Get.to(()=> EnterTripScreen());
            }),
          ],
        ),
      ),
    );
  }
}
