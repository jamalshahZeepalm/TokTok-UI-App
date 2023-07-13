// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class CustomCircleContainer extends StatefulWidget {
  double w, h;

  String? profile;

  CustomCircleContainer({
    Key? key,
    this.profile,
    required this.w,
    required this.h,
  }) : super(key: key);

  @override
  State<CustomCircleContainer> createState() => _CustomCircleContainerState();
}

class _CustomCircleContainerState extends State<CustomCircleContainer> {
  bool isVisibile = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 52.h,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.profile!))),
      child: Visibility(
        replacement: const SizedBox(),
        visible: isVisibile,
        child: Align(
          alignment: const AlignmentDirectional(0.1, 9),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isVisibile = !isVisibile;
                });
                debugPrint(isVisibile.toString());
              },
              child: Container(
                width: 21.w,
                height: 21.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.iconColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(
                    AppIcons.kPlusBlackIcon,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
