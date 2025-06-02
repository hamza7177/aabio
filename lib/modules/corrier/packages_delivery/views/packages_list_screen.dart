import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_text_style.dart';

class PackagesListScreen extends StatelessWidget {
  const PackagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,

            vertical: 10.h),
        children: [
          Text(
            'Package delivery',
            style: AppTextStyle.boldPrimary22.copyWith(
              color: AppColors.darkGrey,
            ),
          ),
          SizedBox(height: 30.h),
          Text('Packages', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Select the delivery and\nenter the customer code',
                  style: AppTextStyle.regularGrey14,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Completed',
                    hintStyle: AppTextStyle.regularGrey12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffEBEBEB)),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffEBEBEB)),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3'].map(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: AppTextStyle.regularBlack14,
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: List.generate(
              3,
                  (index) => Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showDeliveryCodeBottomSheet(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xffC7C7C7),
                                width: 1.w,
                              ),
                            ),
                          ),
                          SizedBox(width: 50.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Friday 7 June',
                                style: AppTextStyle.regularBlack16,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Paris Dakar',
                                style: AppTextStyle.regularBlack14,
                              ),
                              Text(
                                'Diallo Fatoumata',
                                style: AppTextStyle.regularGrey14,
                              ),
                            ],
                          ),
                          // SizedBox(width: 10.w),
                          Spacer(),
                          Text('+12.00 €', style: AppTextStyle.mediumBlack18),
                          Icon(Icons.chevron_right, color: AppColors.primary),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeliveryCodeBottomSheet(BuildContext context) {
    String code = ""; // To store the entered code

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter delivery code',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            index < code.length ? code[index] : '',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 30.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      if (index == 9) {
                        return Container(); // Empty space for alignment
                      } else if (index == 10) {
                        return _buildKeypadButton('0', () {
                          if (code.length < 4) {
                            setState(() {
                              code += '0';
                            });
                          }
                        });
                      } else if (index == 11) {
                        return _buildKeypadButton('', () {
                          setState(() {
                            if (code.isNotEmpty) {
                              code = code.substring(0, code.length - 1);
                            }
                          });
                        }, icon: Icons.backspace_outlined);
                      } else {
                        final number = (index + 1).toString();
                        return _buildKeypadButton(number, () {
                          if (code.length < 4) {
                            setState(() {
                              code += number;
                            });
                          }
                        });
                      }
                    },
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildKeypadButton(String label, VoidCallback onPressed, {IconData? icon}) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: icon != null
            ? Icon(icon, size: 24.sp, color: Colors.black)
            : Text(
          label,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}