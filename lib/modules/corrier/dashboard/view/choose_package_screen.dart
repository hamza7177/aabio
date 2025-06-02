import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import 'meeting_places_screen.dart';

class ChoosePackagesScreen extends StatefulWidget {
  const ChoosePackagesScreen({super.key});

  @override
  _ChoosePackagesScreenState createState() => _ChoosePackagesScreenState();
}

class _ChoosePackagesScreenState extends State<ChoosePackagesScreen> {
  final Map<String, bool> packageSelections = {
    'Documents': false,
    'Computer': false,
    'Shoes': false,
    'Jewelry': false,
    'Accessories': false,
    'Clothing': false,
    'Mobile': false,
  };

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'I choose my packages',
                style: AppTextStyle.boldBlack22.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              Text(
                '4/5',
                style: AppTextStyle.mediumPrimary14.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'What types of packages do I want to carry?',
            style: AppTextStyle.mediumBlack16,
          ),
          SizedBox(height: 10.h),
          Wrap(
            spacing: 10.w, // Horizontal space between items
            runSpacing: 10.h, // Vertical space between rows
            children: packageSelections.keys.map((package) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width - 32.w - 10.w) / 2, // Adjust width for two columns
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: packageSelections[package],
                        onChanged: (value) {
                          setState(() {
                            packageSelections[package] = value ?? false;
                          });
                        },
                        activeColor: AppColors.orange,
                        side: BorderSide(color: Colors.grey),
                      ),
                      SizedBox(width: 10.w),
                      Flexible(
                        child: Text(
                          package,
                          style: AppTextStyle.regularBlack14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
          child: SmallButton(
            text: 'Next',
            onPressed: () {
              Get.to(()=>MeetingPlacesScreen());
            },
          ),
        ),
      ),
    );
  }
}