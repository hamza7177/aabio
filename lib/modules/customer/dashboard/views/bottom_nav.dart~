import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import '../../../corrier/messaging/views/messgae_tab_screen.dart';
import '../../profile/views/account_screen.dart';
import '../../request/view/request_tab_screen.dart';
import '../widgets/bottom_nav_item.dart';
import 'dashbaord_screen.dart';
import 'listing_screen.dart' show FlightItineraryScreen;


class BottomNav extends StatefulWidget {
  final int pageIndex;

  const BottomNav({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
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
      HomeScreen(),
      RequestTabScreen(),
      FlightItineraryScreen(),

      MessageTabScreen(),
      AccountScreen(),
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
            padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
            child: Row(
              children: [
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/home.png',
                    image2: 'assets/icons/home.png',
                    text: 'Home',
                    isSelected: _currentPageIndex == 0,
                    onTap: () => _setPage(0),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
                Expanded(
                  child: SizedBox(
                    child: BottomNavItem(
                      image1: 'assets/icons/request.png',
                      image2: 'assets/icons/request.png',
                      isSelected: _currentPageIndex == 1,
                      text: 'Requests',
                      onTap: () => _setPage(1),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/rotues.png',
                    image2: 'assets/icons/rotues.png',
                    isSelected: _currentPageIndex == 2,
                    text: 'Routes',
                    onTap: () => _setPage(2),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/messageing.png',
                    image2: 'assets/icons/messageing.png',
                    isSelected: _currentPageIndex == 3,
                    text: 'Messaging',
                    onTap: () => _setPage(3),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
                Expanded(
                  child: BottomNavItem(
                    image1: 'assets/icons/person.png',
                    image2: 'assets/icons/person.png',
                    isSelected: _currentPageIndex == 4,
                    text: 'Account'.tr,
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
