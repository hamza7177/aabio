import 'package:corrier/modules/auth/widgets/app_button.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text_style.dart';
import 'pay_online_with_aabio.dart';
import 'recipet_information_screen.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  // Map to store the items, their prices, and quantities
  final Map<String, Map<String, dynamic>> items = {
    'Documents': {'price': 10, 'quantity': 0, 'selected': false},
    'Laptop': {'price': 30, 'quantity': 0, 'selected': false},
    'Shoes': {'price': 6, 'quantity': 0, 'selected': false},
    'Jewelry': {'price': 6, 'quantity': 0, 'selected': false},
    'Accessories': {'price': 6, 'quantity': 0, 'selected': false},
    'Clothing': {'price': 6, 'quantity': 0, 'selected': false},
  };

  // Calculate total price based on selected items and quantities
  double get totalPrice {
    double total = 0;
    items.forEach((key, value) {
      if (value['selected'] == true) {
        total += value['price'] * value['quantity'];
      }
    });
    return total;
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
        title: Text('Booking', style: AppTextStyle.boldPrimary18),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        children: [
          Text('Select packages to pick up', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          Text(
            ' *Guest only picks up packages below',
            style: AppTextStyle.regularGrey10,
          ),
          SizedBox(height: 20.h),
          // Grid for package selection
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 3,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            children: items.keys.map((item) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    items[item]!['selected'] = !items[item]!['selected'];
                    if (items[item]!['selected'] && items[item]!['quantity'] == 0) {
                      items[item]!['quantity'] = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 40.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xffF8F8F8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          color: items[item]!['selected'] ? Colors.red : Colors.transparent,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        '$item: €${items[item]!['price']}',
                        style: AppTextStyle.regularBlack14,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20.h),
          // Quantity section for selected items
          Text('Quantity', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          ...items.entries.where((entry) => entry.value['selected']).map((entry) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${entry.key}:',
                    style: AppTextStyle.regularBlack14,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (entry.value['quantity'] > 0) {
                              entry.value['quantity']--;
                              if (entry.value['quantity'] == 0) {
                                entry.value['selected'] = false;
                              }
                            }
                          });
                        },
                        icon: Icon(Icons.remove, size: 20),
                      ),
                      Text(
                        '${entry.value['quantity']}',
                        style: AppTextStyle.regularBlack14,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            entry.value['quantity']++;
                          });
                        },
                        icon: Icon(Icons.add, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
          SizedBox(height: 20.h),
          // Total price section
          Text('Total', style: AppTextStyle.mediumBlack16),
          SizedBox(height: 10.h),
          Container(
            height: 140.h,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child: Text(
                '${totalPrice.toInt()} €',
                style: AppTextStyle.boldPrimary28,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            '*Excluding service fees and VAT',
            style: AppTextStyle.regularGrey10,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              Get.to(() => PayOnlineWithAabio());
            },
            child: Text(
              'Why pay online with Aabio ?',
              style: AppTextStyle.regularBlack14.copyWith(
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.h),
          // Book button
         AppButton(text: 'Book', onPressed: (){
           Get.to(()=> RecipetInformationScreen());
         })
        ],
      ),
    );
  }
}