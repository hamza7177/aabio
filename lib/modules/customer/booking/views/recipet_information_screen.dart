import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_button.dart';
import '../../../auth/widgets/app_textfield.dart';
import 'booking_details.dart';
import 'booking_total.dart';

class RecipetInformationScreen extends StatelessWidget {
  RecipetInformationScreen({super.key});

  final nameController = TextEditingController();
  final firstNameController = TextEditingController();
  final phoneNumberController = TextEditingController();

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
          Text('Recipet Information', style: AppTextStyle.boldBlack20),
          SizedBox(height: 20.h),
          Text(
            'Fill in the information of the person who must collect your packages',
            style: AppTextStyle.regularBlack14,
          ),
          SizedBox(height: 20.h),
          AppTextField(labelText: 'Name', controller: nameController),
          AppTextField(
            labelText: 'First name',
            controller: firstNameController,
          ),
          AppTextField(
            labelText: 'phone number',
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'By continuing you agree to our terms and conditions as well as our privacy policy',
                  style: AppTextStyle.regularBlack14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                AppButton(
                  text: 'Book',
                  onPressed: () {
                    Get.to(() => BookingTotal());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
