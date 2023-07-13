import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/general_widgets/animation/auto_shake_animation.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/pages/onboardingScreen/onboarding_screen.dart';
import 'package:toktok/res/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: AnimatedSplashScreen(
            splash: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomShakeAnimation(
                  child: Image.asset(
                    AppAssets.dropLogo,
                    width: 60.w,
                    height: 60.w,
                  ),
                ),
                Text(
                  'TokTok',
                  style: appTextStyle.displayLarge!.copyWith(
                    color: AppColors.darkBlueColor,
                  ),
                )
              ],
            ),
            nextScreen: const OnBoardingScreen(),
            splashTransition: SplashTransition.fadeTransition,
          ),
        ),
      ),
    );
  }
}
