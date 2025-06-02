import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_button.dart';

class ToBeDeliveredDetails extends StatelessWidget {
  final String date;
  final String from;
  final String to;
  final String weight;
  final String rate;
  final String time;

  const ToBeDeliveredDetails({
    Key? key,
    required this.date,
    required this.from,
    required this.to,
    required this.weight,
    required this.rate,
    required this.time,
  }) : super(key: key);

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
        title: Text('Request', style: AppTextStyle.boldPrimary18),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Toggle Button (Using the ToggleButton2 from your previous message)
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    height: 92.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/container_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.flight_takeoff, color: AppColors.white),
                          SizedBox(height: 10.h),
                          Text(
                            to,
                            style: AppTextStyle.mediumPrimary14.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  '→',
                  style: TextStyle(fontSize: 22, color: AppColors.primary),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    height: 92.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/container_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.flight_land, color: AppColors.white),
                          SizedBox(height: 10.h),
                          Text(
                            from,
                            style: AppTextStyle.mediumPrimary14.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            // Price per kg
            Center(
              child: Text(
                '€6/kg',
                style: AppTextStyle.mediumBlack16.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/profile.png',
                  width: 50.w,
                  height: 50.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fatty snow', style: AppTextStyle.mediumBlack14),
                    Text('ID: 123456789', style: AppTextStyle.regularBlack12),
                    Text('Guest', style: AppTextStyle.regularBlack12),
                  ],
                ),
                SizedBox(width: 30.w),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    height: 50.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey, width: 1.w),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.message, color: AppColors.primary),
                        SizedBox(width: 10.w),
                        Text('Message', style: AppTextStyle.regularBlack14),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    height: 50.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey, width: 1.w),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: AppColors.primary),
                        SizedBox(width: 10.w),
                        Text('Call', style: AppTextStyle.regularBlack14),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text('Reservation Summary', style: AppTextStyle.boldBlack16),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: AppColors.grey, width: 1.w),
              ),
              child: Column(
                spacing: 10.h,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Accessories x 1',
                        style: AppTextStyle.regularGrey12,
                      ),
                      Text('1KG\n€6/Kg', style: AppTextStyle.regularBlack12),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Laptop x 1', style: AppTextStyle.regularGrey12),
                      Text('1KG\n€6/Kg', style: AppTextStyle.regularBlack12),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total', style: AppTextStyle.mediumBlack14),
                      Text('36€', style: AppTextStyle.mediumBlack14),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            // Flight Information Section
            Text('Flight Information', style: AppTextStyle.boldBlack16),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Departure Date", style: AppTextStyle.mediumGrey16),
                    Text(date, style: AppTextStyle.mediumBlack18),
                  ],
                ),
                Icon(Icons.arrow_forward, color: AppColors.primary),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Check-in Date", style: AppTextStyle.mediumGrey16),
                    Text(date, style: AppTextStyle.mediumBlack18),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Check-out time", style: AppTextStyle.mediumGrey16),
                    Text(time, style: AppTextStyle.mediumBlack18),
                  ],
                ),
                Icon(Icons.arrow_forward, color: AppColors.primary),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Check-in time", style: AppTextStyle.mediumGrey16),
                    Text(time, style: AppTextStyle.mediumBlack18),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),

            // Guest Verification Section
            SizedBox(height: 16.h),
            // Shipping Price Section
            Text(
              'All packages will be checked. Guest has the\nright to open package or not to carry.',
              style: AppTextStyle.mediumGrey12,
            ),
            SizedBox(height: 8.h),
            Text('Receipt information', style: AppTextStyle.boldBlack16),
            SizedBox(height: 16.h),
            Text("Name", style: AppTextStyle.mediumGrey16),
            Text('Koffi', style: AppTextStyle.mediumBlack18),
            SizedBox(height: 16.h),
            Text("First name(s)", style: AppTextStyle.mediumGrey16),
            Text('Jean Claude', style: AppTextStyle.mediumBlack18),
            SizedBox(height: 16.h),
            Text("Contact", style: AppTextStyle.mediumGrey16),
            Text('+ 225 07 79 54 67 88', style: AppTextStyle.mediumBlack18),
            SizedBox(height: 16.h),
            SmallButton(text: 'I took care of the package', onPressed: () {}),
            SizedBox(height: 16.h),
            AppButton(text: 'Decline Package', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
