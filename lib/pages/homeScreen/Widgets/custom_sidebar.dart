// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toktok/res/app_colors.dart';

class CustomSideBar extends StatefulWidget {
  double subPadding;

  String svgImage, title;

  VoidCallback voidCallback;

  CustomSideBar({
    Key? key,
    required this.subPadding,
    required this.svgImage,
    required this.voidCallback,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomSideBar> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends State<CustomSideBar> {
  bool heart = false;
  //white heart
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Column(
      // if isHeartContainer is flase so it will show other svgs icons
      children: [
        GestureDetector(
          onTap: widget.voidCallback,
          child: SvgPicture.asset(
            widget.svgImage,
            width: 24.w,
            height: 24.w,
            color: AppColors.backgroundColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: widget.subPadding.h),
          child: Text(
            widget.title,
            style: appTextStyle.bodySmall!.copyWith(
                color: AppColors.backgroundColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
