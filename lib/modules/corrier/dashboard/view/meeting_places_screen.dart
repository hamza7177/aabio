import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/small_button.dart';
import '../../listings/view/publish_success_screen.dart';

class MeetingPlacesScreen extends StatelessWidget {
  const MeetingPlacesScreen({super.key});

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
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Meeting Places ',
                style: AppTextStyle.boldBlack22.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              Text(
                '5/5',
                style: AppTextStyle.mediumPrimary14.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 20.h),
          Text(
            'Where to drop the package?',
            style: AppTextStyle.mediumBlack16,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Drop-off city',
                    hintStyle: AppTextStyle.regularGrey12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select location',
                    hintStyle: AppTextStyle.regularGrey12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: AppTextStyle.regularBlack14),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Where to pick up the package?',
            style: AppTextStyle.mediumBlack16,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pick-up city',
                    hintStyle: AppTextStyle.regularGrey12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select location',
                    hintStyle: AppTextStyle.regularGrey12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: AppTextStyle.regularGrey12),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Important***',
            style: AppTextStyle.boldBlack16.copyWith(color: AppColors.orange),
          ),
          SizedBox(height: 10.h),
          Text(
            'The serenity of your trip is the priority of the Aabio platform in the context of parcel transport for our customers.\n\nIn order to ensure the care of benevolent parcels, please check all the items given to you by customers one by one.\nThis is your responsibility during border crossings.',
            style: AppTextStyle.regularBlack14,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
          child:SmallButton(text: 'Next', onPressed: () {
            Get.to(()=> PublishSuccessScreen());
          },),
        ),
      ),
    );
  }
}