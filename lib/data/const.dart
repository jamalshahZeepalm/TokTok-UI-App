import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/pages/addPostScreen/camera_screen.dart';
import 'package:toktok/pages/chatScreen/chat_list_screen.dart';
import 'package:toktok/pages/homeScreen/dashboard_screen.dart';
import 'package:toktok/pages/profileScreen/editProfile.dart';
import 'package:toktok/pages/searchScreen/search_screen.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/routes/route_name.dart';

List pagesList = [
  const DashBoardScreen(),
  SearchScreen(),
  CameraScreen(),
  const ChatListScreen(),
  const EditProfileScreen()
];

List<BottomNavigationBarItem> bottomNavigationBarItemsList = [
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.homeIcon,
      ),
    ),
    label: '',
    activeIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.homeIcon,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(AppIcons.searchIcon),
    ),
    label: '',
    activeIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.searchIcon,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(AppIcons.addIcon),
    ),
    label: '',
    activeIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.addIcon,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(AppIcons.chatIcon),
    ),
    label: '',
    activeIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.chatIcon,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(AppIcons.profileIcon),
    ),
    label: '',
    activeIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SvgPicture.asset(
        AppIcons.profileIcon,
        color: AppColors.primaryColor,
      ),
    ),
  )
];
 List<Map<String, dynamic>> reUsableList = [
    {
      'icon': AppIcons.profileIcon,
      'title': 'My Account',
      'onPressed': () {
        Get.toNamed(RouteName.kProfileScreen);
      }
    },
    {
      'icon': AppIcons.notificationsIcon,
      'title': 'Notification',
      'onPressed': () {
        Get.toNamed(RouteName.kNotificationScreen);
      }
    },
    {
      'icon': AppIcons.historyIcon,
      'title': 'Activity History',
      'onPressed': () {}
    },
    {
      'icon': AppIcons.moneyIcon,
      'title': 'Billing and Payment',
      'onPressed': () {
        Get.toNamed(RouteName.kConfirmationsScreen);
      }
    },
    {
      'icon': AppIcons.lockIcon,
      'title': 'Security & Privacy',
      'onPressed': () {}
    },
    {
      'icon': AppIcons.helpIcon,
      'title': 'Help',
      'onPressed': () {}
    },
  ];