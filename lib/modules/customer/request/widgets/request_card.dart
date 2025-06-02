import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_text_style.dart';

class RequestCard extends StatelessWidget {
  String? status;
  String? date;
  String? city;
  String? type;
  String? price;
   RequestCard({super.key, required this.status, required this.date, required this.city, required this.type, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: Color(0xffEBEBEB),
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // Pushes children to edges
        children: [
          Text(status.toString(), style: AppTextStyle.mediumBlack16),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(date.toString(), style: AppTextStyle.mediumBlack16),
              Text(city.toString(), style: AppTextStyle.mediumBlack16),
              Text(type.toString(), style: AppTextStyle.mediumBlack16),
            ],
          ),
          Text(price.toString(), style: AppTextStyle.mediumBlack16),
        ],
      ),
    );
  }
}
