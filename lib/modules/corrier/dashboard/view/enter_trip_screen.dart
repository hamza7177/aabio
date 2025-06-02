import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/small_button.dart';
import 'selling_price.dart';

class EnterTripScreen extends StatefulWidget {
  const EnterTripScreen({super.key});

  @override
  _EnterTripScreenState createState() => _EnterTripScreenState();
}

class _EnterTripScreenState extends State<EnterTripScreen> {
  bool isReturnTrip = false;
  DateTime? departureDate;
  DateTime? arrivalDate;
  DateTime? returnDate;

  Future<void> _selectDate(
    BuildContext context,
    bool isDeparture,
    bool isReturn,
  ) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        if (isDeparture) {
          departureDate = picked;
        } else if (isReturn) {
          returnDate = picked;
        } else {
          arrivalDate = picked;
        }
      });
    }
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
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'I enter my trip',
                    style: AppTextStyle.boldBlack22.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                  Text(
                    '2/5',
                    style: AppTextStyle.mediumPrimary14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),
              Text('Location', style: AppTextStyle.mediumBlack16),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Departure city',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Arrival city',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(height: 20.h),
              Text('When?', style: AppTextStyle.mediumBlack16),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, true, false),
                      decoration: InputDecoration(
                        hintText:
                            departureDate == null
                                ? 'Departure date'
                                : '${departureDate!.day}/${departureDate!.month}/${departureDate!.year}',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: AppColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, false, false),
                      decoration: InputDecoration(
                        hintText:
                            arrivalDate == null
                                ? 'Checkin date'
                                : '${arrivalDate!.day}/${arrivalDate!.month}/${arrivalDate!.year}',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: AppColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, true, false),
                      decoration: InputDecoration(
                        hintText:
                            departureDate == null
                                ? 'Departure date'
                                : '${departureDate!.day}/${departureDate!.month}/${departureDate!.year}',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: AppColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, false, false),
                      decoration: InputDecoration(
                        hintText:
                            arrivalDate == null
                                ? 'Checkin date'
                                : '${arrivalDate!.day}/${arrivalDate!.month}/${arrivalDate!.year}',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: AppColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              Text('who i am?', style: AppTextStyle.mediumBlack16),
              SizedBox(height: 20.h),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Individual',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Professional GP',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
          child: SmallButton(
            text: 'Next',
            onPressed: () {
              Get.to(() => SetSellingPriceScreen());
            },
          ),
        ),
      ),
    );
  }
}
