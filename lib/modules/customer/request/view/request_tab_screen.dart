import 'package:corrier/modules/customer/request/view/declined_list_screen.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../auth/widgets/app_button.dart';
import '../widgets/request_card.dart';
import '../widgets/top_container.dart';
import 'pending_list_screen.dart';
import 'pending_request.dart';

class RequestTabScreen extends StatelessWidget {
  const RequestTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          surfaceTintColor: AppColors.white,
          title: Text('Requests', style: AppTextStyle.boldPrimary24),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TopContainer(title: "Ongoing requests", no: "3",onTap: (){
                      Get.to(()=> PendingListScreen());
                    },),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: TopContainer(title: "Declined requests", no: "3",onTap: (){
                      Get.to(()=> DeclinedListScreen());
                    },),
                  ),
                ],
              ),
            ),
            // TabBar
            TabBar(
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.grey,
              labelStyle: AppTextStyle.boldPrimary16,
              unselectedLabelStyle: AppTextStyle.regularGrey14,
              indicatorColor: AppColors.primary,
              indicatorWeight: 3,
              tabs: const [Tab(text: 'Accepted'), Tab(text: 'Pending')],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Accepted Requests Screen
                  AcceptedRequestsScreen(),
                  // Pending Requests Screen
                  PendingRequestsScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Screen for Accepted Requests
class AcceptedRequestsScreen extends StatelessWidget {
  const AcceptedRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      children: [
        Center(
          child: Image.asset('assets/images/no_request.png', height: 200.h),
        ),
        // Add more widgets for Accepted requests here
        Center(child: Text('No Requests ', style: AppTextStyle.boldBlack22)),
        Center(
          child: Text(
            'Find the available kilos and make a request to reserve your kilos according to your needs',
            style: AppTextStyle.regularGrey14,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30.h),
        AppButton(text: 'View Trips', onPressed: () {}),
      ],
    );
  }
}

// Screen for Pending Requests
class PendingRequestsScreen extends StatelessWidget {
  const PendingRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      children: [
        // Add widgets for Pending requests here
        ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder:
              (context, index) => Column(
                children: [
                  RequestCard(
                    status: 'Pending',
                    date: 'Saturday, May 25',
                    city: 'Paris Dakar',
                    type: 'faty snow',
                    price: "+10 €",
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
        ),
      ],
    );
  }
}
