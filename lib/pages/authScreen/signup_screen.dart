import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/animation/auto_shake_animation.dart';
import 'package:toktok/general_widgets/custom_appbar_widget.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/general_widgets/primary_textbutton.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/general_widgets/richtext.dart';
import 'package:toktok/general_widgets/secondarybutton.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/routes/route_name.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with TickerProviderStateMixin {
  TextEditingController nameC = TextEditingController();

  TextEditingController emailC = TextEditingController();

  TextEditingController passwordC = TextEditingController();

  TextEditingController confirmC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar:
          CustomAppBar(title: '', svgIcon: AppIcons.infoIcon, onPressed: () {}),
      body: Column(
        children: [
          const Divider(),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: CustomShakeAnimation(
              child: Text(
                'Sign up',
                style: appTextStyle.headlineLarge!.copyWith(
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          PrimaryTextFormField(
            hintText: 'Full name',
            borderRadius: 6.sp,
            controller: nameC,
          ),
          SizedBox(
            height: 15.h,
          ),
          PrimaryTextFormField(
            hintText: 'Email',
            borderRadius: 6.sp,
            controller: emailC,
          ),
          SizedBox(
            height: 15.h,
          ),
          PrimaryTextFormField(
            hintText: 'Password',
            borderRadius: 6.sp,
            controller: passwordC,
          ),
          SizedBox(
            height: 15.h,
          ),
          PrimaryTextFormField(
            hintText: 'Confirm password',
            borderRadius: 6.sp,
            controller: confirmC,
          ),
          SizedBox(
            height: 15.h,
          ),
          PrimaryButton(
              elevation: 0,
              onTap: () {
                Get.offNamed(RouteName.kLandingScreen);
              },
              text: 'Create an account',
              fontSize: 18.sp,
              borderRadius: 6,
              width: 311.w,
              height: 44.h,
              textColor: AppColors.backgroundColor,
              bgColor: AppColors.primaryColor),
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
            title: 'I have an account ',
            subtitle: 'Sign In',
            onTab: () {
              Get.offNamed(RouteName.kLoginScreen);
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
    );
  }
}
