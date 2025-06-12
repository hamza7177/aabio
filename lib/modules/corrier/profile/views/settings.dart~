import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/view/auth_screen.dart';
import '../../../customer/profile/views/aabio_support.dart';
import '../../../customer/profile/views/become_a_partner.dart';
import '../../../customer/profile/views/help_center.dart';
import '../../../customer/profile/views/identify_document_Screen.dart';
import '../../../customer/profile/views/my_bank_info.dart';
import '../../../customer/profile/views/perosnal_information.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        surfaceTintColor: AppColors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          // Profile Section
          Text(
            'Settings',
            style: AppTextStyle.boldBlack26.copyWith(color: AppColors.darkGrey),
          ),
          SizedBox(height: 20.h),

          // Account Section
          Text('Account', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          ListTile(
            leading: Image.asset(
              'assets/icons/person_info.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'Personal information',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {
              Get.to(() => PersonalInformationScreen());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/id.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'Identity documents',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {
              Get.to(() => IdentityDocumentsScreen());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Bank Cards.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'My Bank Information (rib)',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {
              Get.to(() => MyBankInfo());
            },
          ),

          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Handshake.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'Become a Pro Partner with Aabio',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {
              Get.to(() => ProPartnerScreen());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),

          // Other Section
          Text('Other', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          ListTile(
            leading: Image.asset(
              'assets/icons/Search.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'Find a Freight Forwarder with Aabio',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {},
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Help.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text('Help Center', style: AppTextStyle.mediumBlack16),
            onTap: () {
              Get.to(() => HelpCenter());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Online Support.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text('Aabio Support', style: AppTextStyle.mediumBlack16),
            onTap: () {
              Get.to(() => AabioSupport());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Term.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text(
              'Terms and Conditions',
              style: AppTextStyle.mediumBlack16,
            ),
            onTap: () {},
          ),
          SizedBox(height: 5.h),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/Logout.png',
              width: 30.w,
              height: 30.h,
            ),
            title: Text('Logout', style: AppTextStyle.mediumBlack16),
            onTap: () {
              Get.offAll(() => AuthScreen());
            },
          ),
          SizedBox(height: 10.h),
          Center(child: Text('Aabio', style: AppTextStyle.regularGrey12)),
          Center(child: Text('v 1.01', style: AppTextStyle.regularGrey12)),
        ],
      ),
    );
  }
}
