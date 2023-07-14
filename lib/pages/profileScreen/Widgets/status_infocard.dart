
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/res/app_colors.dart';

class StatusInfoCard extends StatelessWidget {
  const StatusInfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
  });
  final String title;
  final String value;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: appTextStyle.headlineLarge!
                .copyWith(color: AppColors.lightBlackColor, fontSize: 15.sp),
          ),
          Text(
            title,
            style: appTextStyle.titleMedium!.copyWith(
              color: AppColors.lightTinyGreyColor,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
