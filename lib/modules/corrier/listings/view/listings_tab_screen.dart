import 'package:corrier/modules/corrier/listings/view/past_listing_screen.dart';
import 'package:corrier/modules/corrier/listings/view/publish_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../customer/request/widgets/top_container.dart';

class ListingsTabScreen extends StatelessWidget {
  const ListingsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          surfaceTintColor: AppColors.white,
          title: Text('Listings', style: AppTextStyle.boldPrimary24.copyWith(color: AppColors.darkGrey)),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: Icon(
                Icons.notifications_none,
                color: AppColors.black,
                size: 26.sp,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // TopContainer Row

            // TabBar
            TabBar(
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.grey,
              labelStyle: AppTextStyle.boldPrimary16,
              unselectedLabelStyle: AppTextStyle.regularGrey14,
              indicatorColor: AppColors.primary,
              indicatorWeight: 3,
              tabs: const [Tab(text: 'Upcoming'), Tab(text: 'Past')],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Accepted Requests Screen
                  PublishListingScreen(),
                  // Pending Requests Screen
                  PastListingScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
