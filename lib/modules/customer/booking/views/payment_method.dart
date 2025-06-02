import 'package:corrier/modules/customer/booking/views/payment_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_button.dart';
import '../../../auth/widgets/app_textfield.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final cardNumberController = TextEditingController();
  final nameController = TextEditingController();
  final dateController = TextEditingController();
  final cvvController = TextEditingController();
  String? selectedPaymentMethod;

  void _showCardDetailsBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder:
          (context) => Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment choice', style: AppTextStyle.boldBlack20),
                SizedBox(height: 20.h),
                Text('Card Number', style: AppTextStyle.mediumBlack16),
                AppTextField(
                  labelText: 'Card Number',
                  keyboardType: TextInputType.number,
                  controller: cardNumberController,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expiry Date',
                            style: AppTextStyle.mediumBlack16,
                          ),
                          AppTextField(
                            labelText: 'MM/YY',
                            keyboardType: TextInputType.datetime,
                            controller: dateController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Security Code',
                            style: AppTextStyle.mediumBlack16,
                          ),
                          AppTextField(
                            labelText: 'CVV',
                            keyboardType: TextInputType.number,
                            controller: cvvController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                AppButton(
                  text: 'Confirm',
                  onPressed: () {
                    Get.to(()=> PaymentSuccessScreen()); // Close the bottom sheet
                  },
                ),
              ],
            ),
          ),
    );
  }

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
        title: Text('Payment', style: AppTextStyle.boldPrimary18),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          Text('Payment choice', style: AppTextStyle.boldBlack20),
          SizedBox(height: 20.h),
          Container(
            height: 60.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: Color(0xff707070),
                width: 0.4.w,
              ),
            ),
            child: RadioListTile(
              title: Row(
                children: [
                  Text('Stripe'),

                  // Replace with actual asset path
                  SizedBox(width: 10.w),
                  Image.asset('assets/icons/stripe.png', height: 30.h),
                ],
              ),
              value: 'stripe',
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value;
                });
              },
            ),
          ),

          SizedBox(height: 20.h),
          selectedPaymentMethod != null
              ? AppButton(
                text: 'Confirm',
                onPressed: () => _showCardDetailsBottomSheet(),
              )
              : Container(),
        ],
      ),
    );
  }
}
