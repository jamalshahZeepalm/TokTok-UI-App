import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/theme/text_themes.dart';
 

class AppTheme {
  //create a light theme with custom colors
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      primarySwatch: const MaterialColor(2, <int, Color>{
        50: Color(0XFFFAFAFA),
        100: Color(0XFFF5F5F5),
        200: Color(0XFFF0F0F0),
        300: Color(0XFFEBEBEB),
        400: Color(0XFFE6E6E6),
        500: Color(0XFFE1E1E1),
        600: Color(0XFFDCDCDC),
        700: Color(0XFFD7D7D7),
        800: Color(0XFFD2D2D2),
        900: Color(0XFFCDCDCD),
      }),
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      scrollbarTheme: ScrollbarThemeData(
        thickness: MaterialStateProperty.all(
          7.w,
        ),

        radius: Radius.circular(28.r),
        thumbVisibility: MaterialStateProperty.all(true),
        trackVisibility: MaterialStateProperty.all(false),
        interactive: true,

        thumbColor: MaterialStateProperty.all(
          AppColors.primaryColor,
        ), // Set the color

        trackColor:
            MaterialStateProperty.all(AppColors.primaryColor.withOpacity(0.2)),
      ),
      textTheme: textLightTheme);

  //create a dark theme with custom colors
  // static ThemeData darkTheme = ThemeData(
  //   scrollbarTheme: ScrollbarThemeData(
  //     thickness: MaterialStateProperty.all(
  //       7.w,
  //     ),

  //     radius: Radius.circular(28.r),
  //     thumbVisibility: MaterialStateProperty.all(true),
  //     trackVisibility: MaterialStateProperty.all(false),
  //     interactive: true,

  //     thumbColor: MaterialStateProperty.all(
  //       AppColor.kPrimary,
  //     ), // Set the color

  //     trackColor: MaterialStateProperty.all(AppColor.kGrayscaleDark80),
  //   ),
  //   primarySwatch: const MaterialColor(50, <int, Color>{
  //     50: Color(0XFF1C1C1E),
  //     100: Color(0XFF1C1C1E),
  //     200: Color(0XFF1C1C1E),
  //     300: Color(0XFF1C1C1E),
  //     400: Color(0XFF1C1C1E),
  //     500: Color(0XFF1C1C1E),
  //     600: Color(0XFF1C1C1E),
  //     700: Color(0XFF1C1C1E),
  //     800: Color(0XFF1C1C1E),
  //     900: Color(0XFF1C1C1E),
  //   }),
  //   textTheme: textDarkTheme,
  //   scaffoldBackgroundColor: AppColor.kDarkBackground,
  //   brightness: Brightness.dark,
  //   primaryColor: AppColor.kPrimary,
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     type: BottomNavigationBarType.fixed,
  //     backgroundColor: Colors.black,
  //     elevation: 0,
  //     showSelectedLabels: false,
  //     showUnselectedLabels: false,
  //   ),
  // );
}