import 'package:corrier/modules/auth/widgets/app_textfield.dart';
import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import 'choose_package_screen.dart';

class SetSellingPriceScreen extends StatelessWidget {
  const SetSellingPriceScreen({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'I set my selling price',
                style: AppTextStyle.boldBlack22.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              Text(
                '3/5',
                style: AppTextStyle.mediumPrimary14.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),

          SizedBox(height: 20.h),
          Text('The price per kilo', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          Text(
            'High price/kg reduces your chances of booking quickly',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 20.h),
          Text('SuitCases*', style: AppTextStyle.regularBlack14),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Available kgs *',
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Price / Kg*',
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
                    Text(
                      'Maximum price set at €12 *',
                      style: AppTextStyle.regularBlack14,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 20.h),
          Text('Options', style: AppTextStyle.regularBlack14),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'I sell at retail ',
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'I sell to a single customer ',
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
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Both',
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
              Expanded(child: SizedBox()),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            'The price of special items *',
            style: AppTextStyle.mediumBlack18,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Documents/Letters',
                      style: AppTextStyle.regularBlack14,
                    ),
                    AppTextField(
                      labelText: '10',
                      readOnly: true,
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laptop',
                      style: AppTextStyle.regularBlack14,
                    ),
                    AppTextField(
                      labelText: '10',
                      readOnly: true,
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile phone',
                      style: AppTextStyle.regularBlack14,
                    ),
                    AppTextField(
                      labelText: '10',
                      readOnly: true,
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            '*Prices for special items are fixed and do not sell per Kilo',
            style: AppTextStyle.regularGrey12,
          ),
         SizedBox(height: 20.h,),
          SmallButton(text: 'Next', onPressed: () {
            Get.to(()=> ChoosePackagesScreen());
          }),
        ],
      ),
    );
  }
}
