import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/pages/profileScreen/profile_screen.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class FanFollowingScreen extends StatefulWidget {
  const FanFollowingScreen({
    super.key,
  });

  @override
  State<FanFollowingScreen> createState() => _FanFollowingScreenState();
}

class _FanFollowingScreenState extends State<FanFollowingScreen> {
  List<UserModel> userModelList = [];
  bool isFollowing = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userModelList = Get.arguments[0];
    isFollowing = Get.arguments[1];
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme app = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.lightBlackColor),
        centerTitle: true,
        title: Text(
          isFollowing ? 'Fans' : 'Following',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.lightBlackColor,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.addplusIcon,
            ),
          )
        ],
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(userModelList[index].image),
              ),
              title: Text(userModelList[index].displayName,
                  style: app.titleMedium!.copyWith(
                    color: AppColors.lightBlackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )),
              subtitle: Text(userModelList[index].userName,
                  style: app.titleMedium!.copyWith(
                    color: AppColors.lightBlackColor,
                    fontSize: 12.sp,
                  )),
              trailing: isFollowing
                  ? userModelList[index].isFollowing
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              userModelList[index].isFollowing =
                                  !userModelList[index].isFollowing;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 6.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.sp),
                              border: Border.all(
                                color: AppColors.primaryColor,
                              ),
                              color: AppColors.primaryColor,
                            ),
                            child: Text('Follow',
                                style: app.titleMedium!.copyWith(
                                  color: AppColors.backgroundColor,
                                  fontSize: 14.sp,
                                )),
                          ))
                      : null
                  : InkWell(
                      onTap: () {
                        setState(() {
                          userModelList[index].isFollowing =
                              !userModelList[index].isFollowing;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                          color: AppColors.primaryColor,
                        ),
                        child: Text('Follow',
                            style: app.titleMedium!.copyWith(
                              color: AppColors.backgroundColor,
                              fontSize: 14.sp,
                            )),
                      )),
            );
          },
          itemCount: userModelList.length),
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
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
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
