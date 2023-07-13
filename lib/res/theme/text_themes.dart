import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toktok/res/app_colors.dart';

TextTheme textLightTheme = TextTheme(
  displayLarge: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(48.sp),
    fontWeight: FontWeight.bold,
  ),
  displayMedium: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(40.sp),
    fontWeight: FontWeight.bold,
  ),
  displaySmall: GoogleFonts.adventPro(
      fontSize: ScreenUtil().setSp(32.sp),
      fontWeight: FontWeight.bold,
      color: AppColors.lightBlackColor
      //color: AppColor.kGrayscaleDark100,
      ),
  headlineLarge: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(24.sp),
    fontWeight: FontWeight.bold,
    color: AppColors.lightBlackColor,
  ),
  headlineMedium: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(20.sp),
    fontWeight: FontWeight.w500,
    color: AppColors.backgroundColor,
  ),
  headlineSmall: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(18.sp),
    fontWeight: FontWeight.bold,
  ),
  titleLarge: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: FontWeight.normal,
    color: AppColors.backgroundColor,
  ),
  titleMedium: GoogleFonts.montserrat(
      fontSize: ScreenUtil().setSp(14.sp),
      fontWeight: FontWeight.w300,
      color: AppColors.backgroundColor),
  titleSmall: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: FontWeight.bold,
    // color: AppColor.kGrayscaleDark100
  ),
  bodyLarge: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(16.sp),

    //color: AppColor.kWhite
  ),
  bodyMedium: GoogleFonts.montserrat(
      fontSize: ScreenUtil().setSp(14.sp), color: AppColors.backgroundColor
      // color: AppColor.kGrayscaleDark100
      ),
  bodySmall: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(14.sp),
    fontWeight: FontWeight.w400,
      color: AppColors.backgroundColor
  ),
  labelLarge: GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: FontWeight.w500,
    //   color: AppColor.kPrimary
  ),
  labelMedium: GoogleFonts.montserrat(
      fontSize: ScreenUtil().setSp(18.sp),
      fontWeight: FontWeight.w500,
      color: AppColors.lightBlackColor),
  labelSmall: GoogleFonts.adventPro(
      fontSize: ScreenUtil().setSp(18.sp),
      fontWeight: FontWeight.w400,
      color: AppColors.lightBlackColor),
);
