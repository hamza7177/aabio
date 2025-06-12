import 'dart:ui';
import 'package:corrier/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/app_text_style.dart';
import '../../../corrier/dashboard/view/corrier_bottomnav.dart';

class SwitchToTravellerMode extends StatefulWidget {
  const SwitchToTravellerMode({super.key});

  @override
  State<SwitchToTravellerMode> createState() => _SwitchToTravellerModeState();
}

class _SwitchToTravellerModeState extends State<SwitchToTravellerMode> with SingleTickerProviderStateMixin {
  double _blurSigma = 25.0; // Increased initial blur for very prominent effect
  double _opacity = 0.0; // Initial opacity for fade effect
  double _scale = 0.8; // Initial scale for zoom-in effect

  @override
  void initState() {
    super.initState();
    // Start animation and navigation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Animate to clear (no blur, full opacity, normal scale)
      setState(() {
        _blurSigma = 0.0;
        _opacity = 1.0;
        _scale = 1.0;
      });

      // Navigate after 3 seconds
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.to(() => const CorrierBottomNav(pageIndex: 0));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Container(
        color: AppColors.darkGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60.h),
            Center(
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(milliseconds: 1500),
                curve: Curves.easeOutCubic, // More pronounced curve
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: _blurSigma, sigmaY: _blurSigma),
                  child: Transform.scale(
                    scale: _scale,
                    child: AnimatedScale(
                      scale: _scale,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeOutCubic,
                      child: Text(
                        'Sell your pounds...',
                        style: AppTextStyle.mediumBlack26.copyWith(color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(milliseconds: 1500),
                curve: Curves.easeOutCubic,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: _blurSigma, sigmaY: _blurSigma),
                  child: Transform.scale(
                    scale: _scale,
                    child: AnimatedScale(
                      scale: _scale,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeOutCubic,
                      child: Image.asset(
                        'assets/icons/chromed luggage.png',
                        height: 400.h,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeOutCubic,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: _blurSigma, sigmaY: _blurSigma),
                child: Transform.scale(
                  scale: _scale,
                  child: AnimatedScale(
                    scale: _scale,
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeOutCubic,
                    child: Text(
                      'Earn with your available\npounds with a quick listing',
                      style: AppTextStyle.mediumBlack22.copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

