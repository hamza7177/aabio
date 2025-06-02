import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../customer/dashboard/widgets/bottom_nav_item.dart';
import '../../listings/view/listings_tab_screen.dart' show ListingsTabScreen;
import '../../messaging/views/messgae_tab_screen.dart';
import '../../profile/views/corrier_account_center.dart';
import '../../publish/views/upload_proof.dart';
import '../../reservations/view/reservation_tab_screen.dart';

class CorrierBottomNav extends StatefulWidget {
  final int pageIndex;

  const CorrierBottomNav({super.key, required this.pageIndex});

  @override
  State<CorrierBottomNav> createState() => _CorrierBottomNavState();
}

class _CorrierBottomNavState extends State<CorrierBottomNav> {
  late List<Widget> _screens;
  PageController? _pageController;
  int _currentPageIndex = 0;
  DateTime? _lastPressed; // Tracks the last time the back button was pressed

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _setPage(int pageIndex) {
    setState(() {
      _pageController!.jumpToPage(pageIndex);
      _currentPageIndex = pageIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.pageIndex);
    _currentPageIndex = widget.pageIndex;
    _screens = [
      ReservationTabScreen(),
      ListingsTabScreen(),
      UploadProofScreen(),

      MessageTabScreen(),
      CorrierAccountCenter(),
    ];
  }

  Future<bool> _onWillPop() async {
    if (_currentPageIndex != 0) {
      _setPage(0); // Move to Home page
      return false; // Prevent app from exiting
    } else {
      DateTime now = DateTime.now();
      if (_lastPressed == null ||
          now.difference(_lastPressed!) > const Duration(seconds: 2)) {
        _lastPressed = now;

        return false; // Prevent app from exiting
      }
      return true; // Exit app if back button is pressed within 2 seconds
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: BottomAppBar(
          color: AppColors.white,
          elevation: 5,
          notchMargin: 5,
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
            child: Row(
              children: [
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/home.png',
                    image2: 'assets/icons/home.png',
                    text: 'Reservations',
                    isSelected: _currentPageIndex == 0,
                    onTap: () => _setPage(0),
                  ),
                ),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02.w),
                Expanded(
                  child: SizedBox(
                    child: BottomNavItem(
                      image1: 'assets/icons/listings.png',
                      image2: 'assets/icons/listings.png',
                      isSelected: _currentPageIndex == 1,
                      text: 'Listings',
                      onTap: () => _setPage(1),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/publish.png',
                    image2: 'assets/icons/publish.png',
                    isSelected: _currentPageIndex == 2,
                    text: 'Publish',
                    onTap: () => _setPage(2),
                  ),
                ),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/messageing.png',
                    image2: 'assets/icons/messageing.png',
                    isSelected: _currentPageIndex == 3,
                    text: 'Messaging',
                    onTap: () => _setPage(3),
                  ),
                ),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/person.png',
                    image2: 'assets/icons/person.png',
                    isSelected: _currentPageIndex == 4,
                    text: 'Account',
                    onTap: () => _setPage(4),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: PageView.builder(
          onPageChanged: _onPageChanged,
          controller: _pageController,
          itemCount: _screens.length,
          itemBuilder: (context, index) {
            return _screens[index];
          },
        ),
      ),
    );
  }
}
