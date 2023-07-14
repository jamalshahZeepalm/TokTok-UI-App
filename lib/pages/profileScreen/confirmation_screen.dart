// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class ConfirmationsScreen extends StatelessWidget {
  const ConfirmationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Success',
            style: appTextStyle.labelMedium!.copyWith(
              color: AppColors.lightBlackColor,
            )),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 100.h,
        ),
        Center(
            child:
                Image.asset(AppAssets.thickSign, width: 100.w, height: 100.h)),
        SizedBox(
          height: 32.h,
        ),
        Center(
          child: Text(
            'Congratulations!',
            style: appTextStyle.headlineMedium!.copyWith(
              fontSize: 18.sp,
              color: AppColors.lightBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          width: 215.w,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
            style: appTextStyle.bodySmall!.copyWith(
              fontSize: 14.sp,
              color: AppColors.grey40Color,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 65.h,
        ),
        PrimaryButton(
            onTap: () {
              Get.back();
            },
            width: 237.w,
            height: 44.h,
            elevation: 0,
            borderRadius: 7,
            text: 'Go Back',
            textColor: AppColors.backgroundColor,
            bgColor: AppColors.primaryColor)
      ]),
    );
  }
}
