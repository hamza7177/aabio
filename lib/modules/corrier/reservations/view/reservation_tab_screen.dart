import 'package:corrier/modules/corrier/reservations/view/to_be_delivered_details.dart';
import 'package:corrier/modules/customer/request/view/declined_list_screen.dart';
import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../auth/widgets/app_button.dart';
import '../../../customer/request/view/pending_list_screen.dart';
import '../../../customer/request/widgets/request_card.dart';
import '../../../customer/request/widgets/top_container.dart';
import 'on_going_reservation.dart';


class ReservationTabScreen extends StatelessWidget {
  const ReservationTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          surfaceTintColor: AppColors.white,
          title: Text('Reservations', style: AppTextStyle.boldPrimary24.copyWith(color: AppColors.darkGrey)),
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
                      Get.to(()=> OngoingReservation());
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
              tabs: const [Tab(text: 'Upcoming'), Tab(text: 'Past')],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Accepted Requests Screen
                  AcceptedReservationScreen(),
                  // Pending Requests Screen
                  PastScreen(),
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
class AcceptedReservationScreen extends StatelessWidget {
  const AcceptedReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      children: [
        Center(
          child: Image.asset('assets/images/manwithcup.png', height: 200.h),
        ),
        // Add more widgets for Accepted requests here
        Center(child: Text('No upcoming reservations', style: AppTextStyle.boldBlack22)),
        Center(
          child: Text(
            'Anticipate your future trip with a listing',
            style: AppTextStyle.regularGrey14,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}

// Screen for Pending Requests
class PastScreen extends StatelessWidget {
  const PastScreen({super.key});

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
              GestureDetector(
                onTap: () => Get.to(() => ToBeDeliveredDetails(
                  date: 'June 7, 2024',
                  from: 'Bamako',
                  to: 'Paris',
                  weight: '28 kg',
                  rate: '10 €/kg',
                  time: '5:30\nPM',
                )),
                child: RequestCard(
                  status: 'To be\ndelivered',
                  date: 'Saturday, May 25',
                  city: 'Paris Dakar',
                  type: 'faty snow',
                  price: "+10 €",
                ),
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
      ],
    );
  }
}
