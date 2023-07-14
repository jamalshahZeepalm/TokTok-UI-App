import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/animation/auto_shake_animation.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/general_widgets/primary_textbutton.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/general_widgets/richtext.dart';
import 'package:toktok/general_widgets/secondarybutton.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/routes/route_name.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 99.h),
        child: Column(
          children: [
            Row(
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
            SizedBox(
              height: 81.h,
            ),
            PrimaryTextFormField(
              hintText: 'Email',
              borderRadius: 6.sp,
              controller: controller,
            ),
            SizedBox(
              height: 15.h,
            ),
            PrimaryTextFormField(
              hintText: 'Password',
              borderRadius: 6.sp,
              controller: controller,
            ),
            SizedBox(
              height: 15.h,
            ),
            PrimaryButton(
                elevation: 0,
                onTap: () {
                  Get.offNamed(RouteName.kLandingScreen);
                },
                text: 'Sign in',
                borderRadius: 6,
                width: 311.w,
                height: 44.h,
                textColor: AppColors.backgroundColor,
                bgColor: AppColors.primaryColor),
            SizedBox(
              height: 20.h,
            ),
            PrimaryTextButton(
              onPressed: () {
                Get.toNamed(RouteName.kForgotPasswordScreen);
              },
              title: 'Forgot password?',
              textColor: AppColors.primaryColor,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Or sign in with social networks',
              style: appTextStyle.labelMedium!.copyWith(
                  color: AppColors.tinyBlackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                SecondaryButton(
                  width: 85.w,
                  onTap: () {},
                  icons: AppAssets.facebookIcon,
                  borderRadius: 10.sp,
                  bgColor: AppColors.darkBlueColor,
                ),
                SizedBox(
                  width: 20.h,
                ),
                SecondaryButton(
                  width: 85.w,
                  onTap: () {},
                  icons: AppAssets.googleIcon,
                  borderRadius: 10.sp,
                  bgColor: AppColors.backgroundColor,
                ),
                SizedBox(
                  width: 20.h,
                ),
                SecondaryButton(
                  width: 85.w,
                  onTap: () {},
                  icons: AppAssets.twitterIcon,
                  borderRadius: 10.sp,
                  bgColor: AppColors.primaryColor,
                )
              ],
            ),
            const Spacer(),
            CustomRichText(
              title: "Don't have an account? ",
              subtitle: 'Sign Up',
              onTab: () {
                Get.toNamed(RouteName.kSignUpScreen);
              },
              subtitleTextStyle: appTextStyle.titleMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
