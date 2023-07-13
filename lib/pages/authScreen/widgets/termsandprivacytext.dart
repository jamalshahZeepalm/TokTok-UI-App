import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/res/app_colors.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      this.color2,
      required this.title4});
  final Color? color2;
  final String title1, title2, title3, title4;

  @override
  Widget build(BuildContext context) {
    final TextTheme _appTextStyle = Theme.of(context).textTheme;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: _appTextStyle.titleMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp),
        children: [
          TextSpan(
            text: title1,
          ),
          TextSpan(
            text: title2,
            style: _appTextStyle.titleMedium!.copyWith(
                color: color2 ?? AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp),
          ),
          TextSpan(
            text: title3,
            style: _appTextStyle.titleMedium!.copyWith(
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ),
          TextSpan(
            text: title4,
            style: _appTextStyle.titleMedium!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
