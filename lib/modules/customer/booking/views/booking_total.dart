import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_button.dart';
import 'payment_method.dart';

class BookingTotal extends StatelessWidget {
  const BookingTotal({super.key});

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
        title: Text('Booking', style: AppTextStyle.boldPrimary18),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  height: 92.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/container_bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.flight_takeoff, color: AppColors.white),
                        SizedBox(height: 10.h),
                        Text(
                          'Paris',
                          style: AppTextStyle.mediumPrimary14.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                '→',
                style: TextStyle(fontSize: 22, color: AppColors.primary),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  height: 92.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/container_bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w, right: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.flight_land, color: AppColors.white),
                        SizedBox(height: 10.h),
                        Text(
                          'Bamako',
                          style: AppTextStyle.mediumPrimary14.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // Price per kg
          Center(
            child: Text(
              '€6/kg',
              style: AppTextStyle.mediumBlack16.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text('Reservation Summary', style: AppTextStyle.boldBlack18),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color: AppColors.grey, width: 1.w),
            ),
            child: Column(
              spacing: 10.h,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Accessories x 1', style: AppTextStyle.regularGrey12),
                    Text('1KG\n€6/Kg', style: AppTextStyle.regularBlack12),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Laptop x 1', style: AppTextStyle.regularGrey12),
                    Text('1pc\n€6', style: AppTextStyle.regularBlack12),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Service fee*', style: AppTextStyle.regularGrey12),
                    Text('3.99€', style: AppTextStyle.regularBlack12),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: AppTextStyle.mediumBlack14),
                    Text('36€', style: AppTextStyle.mediumBlack14),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Payment: You have Aabio protection because your money is secure until the end of the transaction. Payment is only released upon delivery of the package by the guest.',
            style: AppTextStyle.regularBlack12,
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: AppButton(
              text: 'Pay',
              onPressed: () {
                Get.to(() => PaymentScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
