import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Sample data model for a pending request
class PendingRequest {
  final String date;
  final String location;
  final String sow;

  PendingRequest({
    required this.date,
    required this.location,
    required this.sow,
  });
}

// Custom card widget for each pending request
class PendingRequestCard extends StatelessWidget {
  final PendingRequest request;
  final VoidCallback onViewTap;

  const PendingRequestCard({
    super.key,
    required this.request,
    required this.onViewTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[600]!, width: 0.5),
          bottom: BorderSide(color: Colors.grey[600]!, width: 0.5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the row contents
          crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
          children: [
            // Profile image placeholder
            Image.asset('assets/icons/profile.png', width: 50.w, height: 50.h),
            SizedBox(width: 10.w), // Fixed spacing between image and text
            // Request details
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center vertically within column
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                children: [
                  Text(request.date, style: AppTextStyle.boldBlack14),
                  SizedBox(height: 5.h),
                  Text(request.location, style: AppTextStyle.boldBlack16),
                  SizedBox(height: 5.h),
                  Text(request.sow, style: AppTextStyle.regularGrey12),
                ],
              ),
            ),
            SizedBox(width: 10.w), // Spacing before View button
            // View button
            GestureDetector(
              onTap: onViewTap,
              child: Text(
                'VIEW',
                style: AppTextStyle.regularBlack12.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}