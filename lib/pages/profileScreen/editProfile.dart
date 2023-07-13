import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/routes/route_name.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text('Settings',
            style: appTextStyle.labelMedium!.copyWith(
              color: AppColors.lightBlackColor,
            )),
        centerTitle: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      body: Column(
        children: [
          const Divider(),
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage:
                    const AssetImage(AppAssets.currentProfileImage),
              ),
              SizedBox(height: 10.h),
              Text(
                currentUserModel.displayName,
                style: appTextStyle.headlineLarge!.copyWith(
                  color: AppColors.lightBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                currentUserModel.address,
                style: appTextStyle.titleMedium!.copyWith(
                    color: AppColors.lightBlackColor, fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          ReUsableListTile(
            icon: AppIcons.profileIcon,
            title: 'My Account',
            onPressed: () {
              Get.toNamed(RouteName.kProfileScreen);
            },
          ),
          ReUsableListTile(
            icon: AppIcons.notificationsIcon,
            title: 'Notification',
            onPressed: () {
              Get.toNamed(RouteName.kNotificationScreen);
            },
          ),
          ReUsableListTile(
            icon: AppIcons.historyIcon,
            title: 'Activity History',
            onPressed: () {},
          ),
          ReUsableListTile(
            icon: AppIcons.moneyIcon,
            title: 'Billing and Payment',
            onPressed: () {
              Get.toNamed(RouteName.kConfirmationsScreen);
            },
          ),
          ReUsableListTile(
            icon: AppIcons.lockIcon,
            title: 'Security & Privacy',
            onPressed: () {},
          ),
          ReUsableListTile(
            icon: AppIcons.helpIcon,
            title: 'Help',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

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
