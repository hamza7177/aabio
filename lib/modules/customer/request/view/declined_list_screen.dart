import 'package:corrier/modules/auth/widgets/app_button.dart';
import 'package:corrier/modules/customer/request/view/pending_request.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text_style.dart';

class DeclinedListScreen extends StatefulWidget {
  DeclinedListScreen({super.key});

  @override
  State<DeclinedListScreen> createState() => _DeclinedListScreenState();
}

class _DeclinedListScreenState extends State<DeclinedListScreen> {
  void _showBottomSheet(BuildContext context) {
    String? selectedValue; // Track the selected radio button value
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text('Refund Reason', style: AppTextStyle.mediumBlack16),
                  SizedBox(height: 10),
                  RadioListTile(
                    title: Text(
                      'Guest didn\'t show up',
                      style: AppTextStyle.regularBlack14,
                    ),
                    value: 'didnt_show',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String?;
                      });
                    },
                  ),
                  Divider(),
                  RadioListTile(
                    title: Text(
                      'Guest hasn\'t confirmed their identity',
                      style: AppTextStyle.regularBlack14,
                    ),
                    value: 'not_confirmed',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String?;
                      });
                    },
                  ),
                  Divider(),
                  RadioListTile(
                    title: Text(
                      'The guest declined my package',
                      style: AppTextStyle.regularBlack14,
                    ),
                    value: 'declined_package',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String?;
                      });
                    },
                  ),
                  Divider(),
                  RadioListTile(
                    title: Text(
                      'My request has been canceled',
                      style: AppTextStyle.regularBlack14,
                    ),
                    value: 'canceled',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String?;
                      });
                    },
                  ),
                  SizedBox(height: 10.h),
                  AppButton(text: 'Send', onPressed: () {}),
                ],
              ),
            );
          },
        );
      },
    );
  }

  final List<PendingRequest> pendingRequests = [
    PendingRequest(
      date: 'Saturday, May 31',
      location: 'Paris Dakar',
      sow: 'Faty sow',
    ),
    PendingRequest(
      date: 'Friday 7 June',
      location: 'Paris Dakar',
      sow: 'Karl Habibov',
    ),
    PendingRequest(
      date: 'Saturday, June 8',
      location: 'Paris Dakar',
      sow: 'Faty sow',
    ),
  ];

  String _selectedPeriod = 'Month';

  // Default value
  final List<String> _periods = ['Week', 'Month', 'Year'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.grey),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          Text('Requests', style: AppTextStyle.boldPrimary20),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Declined', style: AppTextStyle.mediumBlack16),
                  Text('by guests', style: AppTextStyle.regularGrey12),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[700]!),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: DropdownButton<String>(
                  value: _selectedPeriod,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.primary,
                    size: 20.sp,
                  ),
                  dropdownColor: Colors.white,
                  underline: SizedBox(),
                  style: AppTextStyle.regularGrey14,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPeriod = newValue!;
                    });
                    print('Selected period: $_selectedPeriod');
                  },
                  items:
                      _periods.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: pendingRequests.length,
            itemBuilder: (context, index) {
              final request = pendingRequests[index];
              return PendingRequestCard(
                request: request,
                onViewTap: () => _showBottomSheet(context),
              );
            },
          ),
        ],
      ),
    );
  }
}
