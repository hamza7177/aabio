import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_style.dart';
import '../../auth/view/auth_screen.dart';
import '../../customer/dashboard/views/bottom_nav.dart';
import '../controllers/walk_through_controller.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final logic = Get.put(WalkthroughController());

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
    Get.offAll(() => BottomNav(pageIndex: 0,isFromLogin: false,));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.white,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            logic.currentPage.value = index;
          },
          children: [
            buildOnboardingPage(context, 'assets/images/ob_first.webp','assets/images/ob_bg.png'),
            buildOnboardingPage(context, 'assets/images/ob_second.webp','assets/images/ob_bg2.png'),
            buildOnboardingPage(context, 'assets/images/ob_third.webp','assets/images/ob_bg3.png'),
          ],
        ),
      ),
      bottomSheet: SafeArea(
        child: Container(
          height: 270.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          decoration: const BoxDecoration(
            color: AppColors.white,

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Section
              Obx(() {
                return RichText(
                  text: TextSpan(
                    style: AppTextStyle.boldBlack18.copyWith(
                      fontSize: 22.sp,
                      height: 1.3,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text:
                            logic.currentPage.value == 0
                                ? 'Traveling light?\n'
                                : logic.currentPage.value == 1
                                ? 'Fast parcel delivery ?\n'
                                : 'Aabio,\n',
                      ),
                      TextSpan(
                        text:
                            logic.currentPage.value == 0
                                ? 'Earn up to '
                                : logic.currentPage.value == 1
                                ? 'Buy Kg '
                                : 'the self-help community',
                      ),
                      if (logic.currentPage.value == 0) ...[
                        TextSpan(
                          text: '€230 *',
                          style: TextStyle(color: Colors.orange),
                        ),
                        TextSpan(text: ' per suitcase'),
                      ] else if (logic.currentPage.value == 1) ...[
                        TextSpan(
                          text: 'under €10 *',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ],
                  ),
                );
              }),

              SizedBox(height: 16.h),

              // Description Section
              Obx(() {
                final description =
                    logic.currentPage.value == 0
                        ? ''
                        : logic.currentPage.value == 1
                        ? 'More than 1,000 available guests per day, to help you move your packages quickly and safely.'
                        : "Your package arrives at your destination in less than 24 hours* and 7 days a week thanks to the guest community.";

                return description.isNotEmpty
                    ? Text(
                      description,
                      style: AppTextStyle.mediumBlack14.copyWith(
                        fontSize: 14.sp,
                        height: 1.4.sp,
                        color: Colors.grey[600],
                      ),
                    )
                    : SizedBox.shrink();
              }),

              Spacer(),

              // Bottom Navigation Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distributes space between children
                children: [
                  // Empty container to balance the layout (optional, can be removed if not needed)
                  SizedBox(width: 24.sp), // Matches the width of the arrow for symmetry
                  // Page Indicators (Centered)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => buildDot(index)),
                  ),
                  // Next Button or Arrow
                  Obx(() => GestureDetector(
                    onTap: logic.currentPage.value == 2
                        ? completeOnboarding
                        : () => _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 24.sp,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnboardingPage(BuildContext context, String imagePath,String backgroundImage) {
    return Stack(
      children: [
        Container(
          height: 350.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            image: DecorationImage(
              image: AssetImage(
               backgroundImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0.w,vertical: 10.h),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Get Started',style: AppTextStyle.boldBlack18.copyWith(color: AppColors.black),),
                  Image.asset('assets/images/logo_color.png',width: 100.w,height: 25.h,),
                ]
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 170.h),
            // Adjust based on bottom sheet height
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Obx(() {
      bool isActive = logic.currentPage.value == index;
      return Container(
        margin: EdgeInsets.only(right: 8.w),
        width: isActive ? 10.w : 10.w,
        height: 10.h,
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : Colors.grey[300],
          shape: BoxShape.circle,
        ),
      );
    });
  }
}
