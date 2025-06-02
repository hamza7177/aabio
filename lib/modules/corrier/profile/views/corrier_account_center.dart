import 'package:corrier/modules/customer/dashboard/views/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../customer/request/widgets/top_container.dart';
import '../../packages_delivery/views/packages_list_screen.dart';
import '../../payment/views/payment_list_screen.dart';
import 'settings.dart';

class CorrierAccountCenter extends StatelessWidget {
  const CorrierAccountCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColors.white,
        title: Text('Aabio', style: AppTextStyle.boldPrimary18),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          // Profile Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage(
                  'assets/icons/profile'
                  '.png',
                ), // Replace with actual asset path
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kiki d\'Affery', style: AppTextStyle.boldBlack16),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.star, color: AppColors.orange, size: 16.sp),
                      Icon(Icons.star, color: AppColors.orange, size: 16.sp),
                      Icon(Icons.star, color: AppColors.orange, size: 16.sp),
                      Icon(Icons.star, color: AppColors.orange, size: 16.sp),
                      Icon(
                        Icons.star_half,
                        color: AppColors.orange,
                        size: 16.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 8.h,
                    ),
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Color(0xffEBEBEB), width: 1.w),
                    ),
                    child: Text(
                      ' 4.00 (9 reviews)',
                      style: AppTextStyle.regularGrey12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(() => Settings());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  height: 38.h,
                  width: 38.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.grey),
                  ),
                  child: Image.asset('assets/icons/settings.png', height: 20.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TopContainer(title: "Purse", no: "0 €", onTap: () {}),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: TopContainer(
                  title: "Packages Delivered",
                  no: "3",
                  onTap: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              Get.to(()=> PaymentListScreen());
            },
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Color(0xff5D5167),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment ',
                        style: AppTextStyle.mediumBlack14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Request the transfer to your account\n72 hours after delivery of the package',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Receive my payment',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/wallet with bank.png',
                    width: 80.w,
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              Get.to(()=> PackagesListScreen());
            },
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Color(0xffD6D6D6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Package delivery',
                        style: AppTextStyle.mediumBlack14,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Enter the customer's parcel code\nto trigger your payment ",
                        style: AppTextStyle.regularBlack12,
                      ),
                      SizedBox(height: 10.h),
                      Text('Enter code', style: AppTextStyle.regularBlack12),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/woman.png',
                    width: 80.w,
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              Get.to(() => BottomNav(pageIndex: 0));
            },
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Switch to customer mode',
                        style: AppTextStyle.mediumBlack14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'To book pounds with guests\nin the community',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/customer.png',
                    width: 80.w,
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Color(0xffC0d5E4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim or Incident',
                        style: AppTextStyle.mediumBlack14,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "I have a problem with a delivery or a\ndispute with a customer.",
                        style: AppTextStyle.regularBlack12,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Report Incident',
                        style: AppTextStyle.regularBlack12,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/angry_black.png',
                    width: 80.w,
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Color(0xff5D5167),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Africa-China-Europe Freight\nForwarder',
                        style: AppTextStyle.mediumBlack14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Our freight forwarding partners\navailable for your large packages ',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Contact us',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/ship.png',
                    width: 80.w,
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
