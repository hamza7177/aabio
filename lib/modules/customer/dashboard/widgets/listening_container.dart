import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_text_style.dart';


class ListeningContainer extends StatelessWidget {
  String title;
  String subtitle;
  String imagePath;

  ListeningContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFCFCFC),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyle.regularGrey12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subtitle, style: AppTextStyle.regularBlack14),
                    SizedBox(width: 20.w),
                    Icon(Icons.arrow_forward_rounded, size: 20.h),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),

              gradient: LinearGradient(
                colors: [
                  AppColors.containerGradient1.withOpacity(0.5),
                  AppColors.containerGradient2.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 150.h,
            width: 120.w,
            child: Image.asset(imagePath, height: 70.h, width: 70.w),
          ),
        ],
      ),
    );
  }
}
