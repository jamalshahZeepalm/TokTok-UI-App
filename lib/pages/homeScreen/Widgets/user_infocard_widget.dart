
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/res/app_colors.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({
    super.key,
    required this.postModel,
  });

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(top: 654.h, left: 20.w),
      child: SizedBox(
        width: 332.w,
        height: 82.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '@${postModel.user.userName}',
              style: appTextStyle.bodyMedium!.copyWith(
                  color: AppColors.backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              '#tour #florida',
              style: appTextStyle.bodySmall!.copyWith(
                  color: AppColors.backgroundColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7.h,
            ),
          ],
        ),
      ),
    );
  }
}
