// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Row(
              children: [
                Text('All activity',
                    style: appTextStyle.labelMedium!.copyWith(
                      color: AppColors.lightBlackColor,
                    )),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset(AppIcons.kPolygon),
              ],
            ),
            GestureDetector(
                onTap: () {
                  // Get.to(() => const MessagesScreen());
                },
                child: SvgPicture.asset(AppIcons.kBlackMessageIcon))
          ],
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.kActivtyBlackMessgeOcon),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Notifications aren’t available',
              style: appTextStyle.headlineMedium!.copyWith(
                fontSize: 18.sp,
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Notifications about your account will appear here',
                style: appTextStyle.bodySmall!.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.grey40Color,
                ),
              ),
            )
          ]),
    );
  }
}
