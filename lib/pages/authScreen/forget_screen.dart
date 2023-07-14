import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toktok/general_widgets/animation/auto_shake_animation.dart';
import 'package:toktok/general_widgets/custom_appbar_widget.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/pages/authScreen/widgets/termsandprivacytext.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_icons.dart';

import '../../res/app_colors.dart';

class ForgetScreen extends StatefulWidget {
  ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Reset Password',
          svgIcon: AppIcons.infoIcon,
          onPressed: () {}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          Center(
            child: CustomShakeAnimation(
              child: Image.asset(
                AppAssets.dropLogo,
                width: 60.w,
                height: 60.w,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: 247.w,
            child: Column(
              children: [
                Text(
                  'Forget Password',
                  style: appTextStyle.headlineLarge!.copyWith(
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  'You will get a code via SMS. Operator rates may apply.',
                  style: appTextStyle.titleMedium!.copyWith(
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          PrimaryTextFormField(
            hintText: 'Phone number',
            borderRadius: 6.sp,
            controller: controller,
          ),
          SizedBox(height: 15.h),
          PrimaryButton(
              elevation: 0,
              onTap: () {},
              text: 'Continue',
              borderRadius: 6,
              width: 311.w,
              height: 44.h,
              textColor: AppColors.backgroundColor,
              bgColor: AppColors.primaryColor),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 20.h)
                .copyWith(left: 20.w),
            child: const TermsAndPrivacyText(
              title1: '  By signing up you agree to our',
              title2: ' Terms',
              title3: ' and',
              title4: ' Conditions of Use',
            ),
          ),
        ],
      ),
    );
  }
}
