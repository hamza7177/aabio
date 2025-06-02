import 'package:corrier/modules/auth/view/auth_screen.dart';
import 'package:corrier/modules/customer/profile/views/perosnal_information.dart' show PersonalInformationScreen;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../corrier/dashboard/view/corrier_bottomnav.dart';
import 'aabio_support.dart';
import 'become_a_partner.dart';
import 'help_center.dart';
import 'identify_document_Screen.dart';
import 'my_bank_info.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
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
            ],
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
              Get.to(()=> PersonalInformationScreen());
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
              Get.to(()=> IdentityDocumentsScreen());
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
              Get.to(()=>MyBankInfo());
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
              Get.to(()=>ProPartnerScreen());
            },
          ),
          SizedBox(height: 5.h),
          Divider(),
          SizedBox(height: 20.h),

          // Become a Pro Partner Section
          GestureDetector(
            onTap: (){
              Get.to(()=> CorrierBottomNav(pageIndex: 0));
            },
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Color(0xff455A64),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Switch to guest mode',
                        style: AppTextStyle.mediumBlack14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Create your listings by listing\nyour available pounds',
                        style: AppTextStyle.regularGrey12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icons/chromed luggage.png',
                    width: 70.w,
                    height: 70.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
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
              Get.to(()=> HelpCenter());
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
              Get.to(()=>AabioSupport());
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
