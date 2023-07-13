
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/res/app_colors.dart';

class TimeLapwidget extends StatelessWidget {
  const TimeLapwidget({
    super.key,
    required this.appTextStyle,
  });

  final TextTheme appTextStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 44.w,
        height: 44.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.grey20Color,
        ),
        child: Center(
          child: Text('#',
              style: appTextStyle.labelMedium!.copyWith(
                color: AppColors.lightBlackColor,
              )),
        ),
      ),
      title: Text('timelapsemoment',
          style: appTextStyle.labelMedium!.copyWith(
            color: AppColors.lightBlackColor,
          )),
      subtitle: Text(
        'Trending Hashtag',
        style: appTextStyle.labelMedium!.copyWith(
          color: AppColors.grey20Color,
          fontSize: 14.sp,
        ),
      ),
      trailing: Text('5091',
          style: appTextStyle.labelMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontSize: 14.sp,
          )),
    );
  }
}
