import 'package:corrier/utils/app_colors.dart';
import 'package:corrier/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'flight_details_Screen.dart';

class FlightItineraryScreen extends StatefulWidget {
  @override
  State<FlightItineraryScreen> createState() => _FlightItineraryScreenState();
}

class _FlightItineraryScreenState extends State<FlightItineraryScreen> {
  bool isDepartureSelected = true; // True for Departure, False for Arrival

  void updateSelection(bool isDeparture) {
    setState(() {
      isDepartureSelected = isDeparture;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white, // Assuming AppColors.white is defined
        surfaceTintColor: AppColors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: ToggleButton2(
                isPreviousOrder: isDepartureSelected,
                updateIsPrevious: updateSelection,
                optionA: "Departure city",
                optionB: "Arrival city",
              ),
            ),
            SizedBox(width: 5.w,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffEBEBEB),
                borderRadius: BorderRadius.circular(13.r),
              ),
              child : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu,color: Colors.black,size: 16.sp,),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildFlightCard(
            date: 'June 4, 2024',
            from: 'Paris',
            to: 'Abidjan',
            weight: '14 kg',
            rate: '10 €/kg',
            time: '5:30\nPM',
          ),
          SizedBox(height: 10.h,),
          _buildFlightCard(
            date: 'June 7, 2024',
            from: 'Bamako',
            to: 'Paris',
            weight: '28 kg',
            rate: '10 €/kg',
            time: '5:30\nPM',
          ),
          SizedBox(height: 10.h,),
          _buildFlightCard(
            date: 'June 9, 2024',
            from: 'Paris',
            to: 'Dakar',
            weight: '30 kg',
            rate: '9 €/kg',
            time: '12:30\nPM',
          ),
          SizedBox(height: 10.h,),
          _buildFlightCard(
            date: 'July 8, 2024',
            from: 'Brussels',
            to: 'Yaounde',
            weight: '24 kg',
            rate: '10 €/kg',
            time: '2:30\nPM',
          ),
          SizedBox(height: 10.h,),
          _buildFlightCard(
            date: 'July 21, 2024',
            from: 'Abidjan',
            to: 'Paris',
            weight: '7 kg',
            rate: '10 €/kg',
            time: '2:30\nPM',
          ),
        ],
      ),
    );
  }

  Widget _buildFlightCard({
    required String date,
    required String from,
    required String to,
    required String weight,
    required String rate,
    required String time,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlightDetailsScreen(
              date: date,
              from: from,
              to: to,
              weight: weight,
              rate: rate,
              time: time,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              height: 95.h,
              decoration: BoxDecoration(
                color: Color(0xffEBEBEB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      date,
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.flight_takeoff, color: AppColors.primary),
                          SizedBox(width: 8.w),
                          Text(from, style: TextStyle(fontSize: 18.sp)),
                        ],
                      ),
                      Text(
                        '→',
                        style: TextStyle(fontSize: 22.sp, color: AppColors.primary),
                      ),
                      Row(
                        children: [
                          Text(to, style: TextStyle(fontSize: 18.sp)),
                          SizedBox(width: 8.w),
                          Icon(Icons.flight_land, color: AppColors.primary),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              height: 70.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.r),
                  bottomLeft: Radius.circular(25.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5), // Moves shadow downward for bottom effect
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(weight, style: AppTextStyle.mediumBlack14),
                      Text(rate, style: AppTextStyle.mediumBlack14),
                    ],
                  ),
                  Text(time, style: AppTextStyle.mediumBlack16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class ToggleButton2 extends StatelessWidget {
  final bool isPreviousOrder; // True for optionA, False for optionB
  final Function(bool) updateIsPrevious;
  final String optionA;
  final String optionB;

  const ToggleButton2({
    super.key,
    required this.isPreviousOrder,
    required this.updateIsPrevious,
    required this.optionA,
    required this.optionB,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFf1f1f1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          // Option A Button (e.g., Departure city)
          Expanded(
            child: GestureDetector(
              onTap: () {
                updateIsPrevious(true);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: isPreviousOrder
                      ? const Color(0xFFEBEBEB)
                      : const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(13),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.flight_takeoff,
                      size: 16,
                      color: isPreviousOrder
                          ? Colors.black
                          : const Color(0xFF666666),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      optionA,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isPreviousOrder
                            ? Colors.black
                            : const Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
          // Option B Button (e.g., Arrival city)
          Expanded(
            child: GestureDetector(
              onTap: () {
                updateIsPrevious(false);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: !isPreviousOrder
                      ? const Color(0xFFEBEBEB)
                      : const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.flight_land,
                      size: 16,
                      color: !isPreviousOrder
                          ? Colors.black
                          : const Color(0xFF666666),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      optionB,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: !isPreviousOrder
                            ? Colors.black
                            : const Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}