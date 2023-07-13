
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class HeartIconWidget extends StatefulWidget {
  final PostModel postModel;
  const HeartIconWidget({super.key, required this.postModel});

  @override
  State<HeartIconWidget> createState() => _HeartIconWidgetState();
}

class _HeartIconWidgetState extends State<HeartIconWidget> {
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              heart = !heart;
              widget.postModel.likesList += 1;
            });
          },
          child: heart
              ? SvgPicture.asset(
                  AppIcons.kHeartIcon,
                  width: 24.w,
                  height: 24.w,
                  color: AppColors.iconColor,
                ) // pink heart

              : SvgPicture.asset(
                  AppIcons.kHeartIcon,
                  width: 24.w,
                  height: 24.w,
                ),
        ), //white heart
        Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Text(
            widget.postModel.likesList.toString(),
            style: appTextStyle.bodySmall!.copyWith(
                color: AppColors.backgroundColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
