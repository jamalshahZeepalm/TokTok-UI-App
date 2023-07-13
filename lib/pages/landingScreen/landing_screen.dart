import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/data/const.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentIndex = 0;

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentIndex == 2 ? Colors.transparent : null,
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.only(bottom: 80.h),
        child: pagesList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.darkGreyColor,
        backgroundColor:
            _currentIndex == 2 ? Colors.transparent : AppColors.backgroundColor,
        elevation: 0,
        iconSize: 24.sp,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
        ),
        unselectedLabelStyle: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400),
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: bottomNavigationBarItemsList
      ),
    );
  }
}
