import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/listening_container.dart';
import 'list_of_countries.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        children: [
          SizedBox(height: 40.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Earn up to ',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: '€230',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.orange,
                  ),
                ),
                TextSpan(
                  text: ' * per suitcase',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ListeningContainer(
            title: 'Get paid by listing your\n available pounds',
            subtitle: 'Post a listing',
            imagePath: 'assets/images/wallet.png',
          ),
          SizedBox(height: 20.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Buy Kg',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
                TextSpan(
                  text: ' under €10 *',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ListeningContainer(
            title: 'Thousands of guests list their\navailable pounds for sale',
            subtitle: 'View listings',
            imagePath: 'assets/images/shopping cart.png',
          ),
          SizedBox(height: 20.h),
          Text(
            "List of available countries",
            style: AppTextStyle.mediumBlack16.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/eu.png', width: 70.w, height: 70.h),
              Image.asset('assets/icons/italy.png', width: 70.w, height: 70.h),
              Image.asset(
                'assets/icons/red_flag.png',
                width: 70.w,
                height: 70.h,
              ),
              Image.asset(
                'assets/icons/germany.png',
                width: 70.w,
                height: 70.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => ListOfCountries());
                },
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Send your documents for',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
                TextSpan(
                  text: ' €10 *',
                  style: AppTextStyle.mediumBlack16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ListeningContainer(
            title: 'The quick solution to send your\nimportant documents',
            subtitle: 'Find Guests',
            imagePath: 'assets/images/mail.png',
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
