
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/res/app_colors.dart';

class ReUsableListTile extends StatelessWidget {
  const ReUsableListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  final String icon;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return ListTile(
      onTap: onPressed,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      leading: SvgPicture.asset(
        icon,
        color: 'My Account' == title ? AppColors.primaryColor : null,
        width: 24.w,
        height: 24.w,
      ),
      title: Text(
        title,
        style: appTextStyle.labelMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
