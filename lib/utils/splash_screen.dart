import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/auth/view/auth_screen.dart';
import '../modules/auth/view/login_screen.dart';
import '../modules/on_boarding/views/on_boarding_screen.dart';
import 'app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller for the loader
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    // Define animations for the three dots

    // Navigate after a delay
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    // Wait for at least 3 seconds to show the splash screen
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => OnboardingScreen());
    // Navigate based on isFirstTime
    // if (widget.isFirstTime) {
    //   // Update SharedPreferences to mark that the user has seen the onboarding
    //   //   final prefs = await SharedPreferences.getInstance();
    //   //   await prefs.setBool('isFirstTime', false);
    //   //   Get.off(() => OnboardingScreen());
    //   // } else {
    //   //   Get.off(() => const Dashboard());
    //   // }
    // }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppColors.primary, AppColors.secondary],
          ),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Space between top & bottom
          children: [
            Expanded(
              child: Center(
                child: Container(
                  // padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/logo.png', // Placeholder path
                    width: 200.w, // Adjust size as needed
                    height: 200.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            // SafeArea(
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: 6.h),
            //     child: SpinKitThreeBounce(
            //       color: Colors.white, // Loader color
            //       size: 22.0, // Adjust size of bouncing dots
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
