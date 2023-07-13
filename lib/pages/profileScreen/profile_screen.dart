import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/routes/route_name.dart';

import '../../res/app_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.coverImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopLevelAppBar(
                      title: 'Account',
                      iconData: AppIcons.editIcon,
                      onPressed: () {},
                    ),
                    SizedBox(height: 50.h),
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
                  ]),
            ),
            SizedBox(height: 16.h),
            Container(
              width: 335.w,
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 11.h)
                  .copyWith(right: 20.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primaryColor,
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatusInfoCard(
                      title: 'Posts',
                      value: '254k',
                      onPressed: () {},
                    ),
                    SizedBox(width: 50.w),
                    StatusInfoCard(
                      title: 'Followers',
                      value: '254k',
                      onPressed: () {
                        Get.toNamed<void>(RouteName.kFanFollowingScreen,
                            arguments: [fanUsersList, true]);
                      },
                    ),
                    SizedBox(width: 50.w),
                    StatusInfoCard(
                        title: 'Following',
                        value: '1.5k',
                        onPressed: () {
                          Get.toNamed<void>(RouteName.kFanFollowingScreen,
                              arguments: [followingUsersList, false]);
                        }),
                  ]),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 600.h,
              child: MasonryGridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                itemCount: currentUserPostList.length,
                itemBuilder: (context, index) {
                  currentIndex = index;
                  return ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      child: Image.asset(
                        currentUserPostList[index].toString(),
                        fit: BoxFit.cover,
                        height: currentIndex % 2 == 0 ? 219.h : 108.h,
                        width: currentIndex % 2 == 0 ? 221.w : 108.w,
                      ));
                },
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: currentIndex % 2 == 0 ? 2 : 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopLevelAppBar extends StatelessWidget {
  const TopLevelAppBar({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  });
  final String title;
  final String iconData;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 44.h)
          .copyWith(bottom: 0.h, right: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.back<void>();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(left: 46.w),
            child: Text(title,
                style: appTextStyle.labelMedium!.copyWith(
                  color: AppColors.lightBlackColor,
                )),
          ),
          IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset(iconData),
          ),
        ],
      ),
    );
  }
}

class StatusInfoCard extends StatelessWidget {
  const StatusInfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
  });
  final String title;
  final String value;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: appTextStyle.headlineLarge!
                .copyWith(color: AppColors.lightBlackColor, fontSize: 15.sp),
          ),
          Text(
            title,
            style: appTextStyle.titleMedium!.copyWith(
              color: AppColors.lightTinyGreyColor,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
