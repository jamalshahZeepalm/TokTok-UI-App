import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/routes/route_name.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 76.h),
          child: Text(
            'Home',
            style: appTextStyle.displaySmall!.copyWith(fontSize: 30.sp),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Expanded(
          child: AnimationLimiter(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: postList.length,
              itemBuilder: (context, index) {
                PostModel postModel = postList[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 600),
                  child: SlideAnimation(
                    curve: Curves.linearToEaseOut,
                    verticalOffset: 80.0,
                    child: FadeInAnimation(
                      child: ListTile(
                        onTap: () {
                          Get.toNamed(RouteName.kLiveScreen,
                              arguments: postModel);
                        },
                        title: Row(
                          children: [
                            CircleAvatar(
                              radius: 18.r,
                              backgroundImage: AssetImage(postModel.user.image),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              postModel.user.displayName,
                              style: appTextStyle.headlineSmall!
                                  .copyWith(fontSize: 16.sp),
                            ),
                          ],
                        ),
                        subtitle: Container(
                          height: 427.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              image: DecorationImage(
                                  image: AssetImage(postModel.image),
                                  fit: BoxFit.cover)),
                          margin: EdgeInsets.only(top: 5.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0)
                                      .copyWith(bottom: 3.h),
                                  child: Icon(Icons.favorite,
                                      color: AppColors.iconColor),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20.w),
                                  child: Text(
                                    postModel.likesList.toString(),
                                    style: appTextStyle.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(14.0)
                                      .copyWith(bottom: 3.h),
                                  child: SvgPicture.asset(
                                    AppIcons.chatIcon,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 23.w),
                                  child: Text(
                                    postModel.commentsList.length.toString(),
                                    style: appTextStyle.bodyMedium,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 12.h,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
