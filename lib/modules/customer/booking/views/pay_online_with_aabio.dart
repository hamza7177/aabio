import 'package:corrier/modules/auth/widgets/app_button.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text_style.dart';

class PayOnlineWithAabio extends StatelessWidget {
  const PayOnlineWithAabio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          SizedBox(height: 50.h),
          Text('Why pay online with Aabio?', style: AppTextStyle.boldBlack22),
          SizedBox(height: 20.h),
          Text(
            'The benefits of Aabio Secure Checkout',
            style: AppTextStyle.mediumBlack16,
          ),
          SizedBox(height: 20.h),
          Text(
            'Blocking: You benefit from Aabio protection because your money is secure until the end of the transaction and a team is dedicated to you in case of problems.',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 10.h),
          Text(
            'Limitless: You can sell and buy pounds internationally.',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 10.h),
          Text(
            'Refund: If your package has not been delivered, we will refund your money in full if the guest is involved.',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 10.h),
          Text(
            'Claim: Thanks to the integrated messaging system, you will be able to file a claim directly online with your exchanges for evidence.',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 10.h),
          Text(
            'Protection: You are protected from scams that can occur via email or phone exchanges.',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 80.h,),
          AppButton(
            text: 'Back',
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
