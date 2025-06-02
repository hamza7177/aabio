import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import 'email_screen.dart';
import 'password_screen.dart';
import 'phone_number_screen.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

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
          Text(
            'Personal Information',
            style: AppTextStyle.boldBlack24.copyWith(color: AppColors.grey),
          ),
          SizedBox(height: 10.h),
          Text('Edit my profile', style: AppTextStyle.boldBlack20),
          SizedBox(height: 20.h),
          ListTile(
            title: Text(
              'Phone Number',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text(
              '+33 6 43 56 23 34',
              style: AppTextStyle.regularBlack14,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.orange,
            ),
            onTap: () {
              Get.to(()=> PhoneNumberScreen());
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Email address',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text(
              'kiki@gmail.com',
              style: AppTextStyle.regularBlack14,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.orange,
            ),
            onTap: () {
              Get.to(()=> EmailScreen());
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Password',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text('••••••••', style: AppTextStyle.regularBlack14),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.orange,
            ),
            onTap: () {
              Get.to(()=> PasswordScreen());
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Gender',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text('Male', style: AppTextStyle.regularBlack14),
            trailing: Icon(Icons.lock, size: 16, color: Colors.grey),
          ),
          Divider(),
          ListTile(
            title: Text(
              'First name',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text('Kiki', style: AppTextStyle.regularBlack14),
            trailing: Icon(Icons.lock, size: 16, color: Colors.grey),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Last name',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.greyShade,
              ),
            ),
            subtitle: Text('Las', style: AppTextStyle.regularBlack14),
            trailing: Icon(Icons.lock, size: 16, color: Colors.grey),
          ),
          Divider(),
          ListTile(
            title: Text('Date of birth',  style: AppTextStyle.mediumBlack16.copyWith(
              color: AppColors.greyShade,
            ),),
            subtitle: Text('28/10/1990', style: AppTextStyle.regularBlack14),
            trailing: Icon(Icons.lock, size: 16, color: Colors.grey),
          ),
          Divider(),
          ListTile(
            title: Text('First name',  style: AppTextStyle.mediumBlack16.copyWith(
              color: AppColors.greyShade,
            ),),
            subtitle: Text('Kiki', style: AppTextStyle.regularBlack14),
            trailing: Icon(Icons.lock, size: 16, color: Colors.grey),
          ),
          Divider(),
          SizedBox(height: 20.h),
          ListTile(
            title: Text(
              'Delete my account',
              style: AppTextStyle.mediumBlack16.copyWith(
                color: AppColors.orange,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
