import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';



class BottomNavItem extends StatelessWidget {
  final String image1;
  final String image2;
  final String text;
  final Function? onTap;
  final bool isSelected;

  BottomNavItem(
      {Key? key,
        required this.image1,
        required this.image2,
        this.onTap,
        this.isSelected = false,
        required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSelected
              ? Image.asset(image1,
              color: isSelected
                  ? AppColors.primary
                  : AppColors.black.withOpacity(0.50),
              height: 25.h)
              : Image.asset(image1,
              color: isSelected
                  ? AppColors.primary
                  : AppColors.black.withOpacity(0.50),
              height: 25),
          const SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: AppTextStyle.mediumBlack14.copyWith(
                fontSize: 9.sp,
                color: isSelected
                    ? AppColors.primary
                    : AppColors.black.withOpacity(0.50)),
          ),
        ],
      ),
    );
  }
}
