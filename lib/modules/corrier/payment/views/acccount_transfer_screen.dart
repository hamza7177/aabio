import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';

class AmountEntryScreen extends StatefulWidget {
  @override
  _AmountEntryScreenState createState() => _AmountEntryScreenState();
}

class _AmountEntryScreenState extends State<AmountEntryScreen> {
  String amount = "128"; // Initial amount

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: AppColors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bank account',
              style: AppTextStyle.mediumBlack22.copyWith(
                color: AppColors.darkGrey,
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                '$amount €',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Available balance €128',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: GridView.builder(
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
                      setState(() {
                        amount += '0';
                      });
                    });
                  } else if (index == 11) {
                    return _buildKeypadButton('', () {
                      setState(() {
                        if (amount.isNotEmpty) {
                          amount = amount.substring(0, amount.length - 1);
                        }
                      });
                    }, icon: Icons.backspace_outlined);
                  } else {
                    final number = (index + 1).toString();
                    return _buildKeypadButton(number, () {
                      setState(() {
                        amount += number;
                      });
                    });
                  }
                },
              ),
            ),
            SizedBox(height: 20.h),
           SmallButton(text: 'Validate', onPressed: (){}),
            SizedBox(height: 16.h),
          ],
        ),
      ),
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