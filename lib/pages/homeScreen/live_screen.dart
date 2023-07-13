import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/pages/homeScreen/Widgets/custom_comment.dart';
import 'package:toktok/pages/homeScreen/Widgets/custom_sidebar.dart';
import 'package:toktok/pages/homeScreen/Widgets/heart_icon_widget.dart';
import 'package:toktok/pages/homeScreen/Widgets/user_infocard_widget.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/res/utils.dart';

import 'Widgets/custom_circle_container.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  List<String> reelsList = [
    AppAssets.kReel1,
    AppAssets.kReel2,
    AppAssets.kReel3,
    AppAssets.kReel1,
    AppAssets.kReel2,
    AppAssets.kReel3,
  ];
  PostModel? postModel;
  @override
  void initState() {
    super.initState();
    postModel = Get.arguments;
    reelsList.insert(0, postModel!.image);
  }

  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: reelsList.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image(
                  image: AssetImage(reelsList[index].toString()),
                  fit: BoxFit.fitWidth,
                  height: Get.height,
                  width: double.maxFinite,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 310.w,
                    top: 477.h,
                  ),
                  child: SizedBox(
                      width: 55.w,
                      child: Column(
                        children: [
                          CustomCircleContainer(
                            h: 45,
                            w: 45,
                            profile: postModel!.user.image,
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          HeartIconWidget(postModel: postModel!),
                          SizedBox(
                            height: 16.h,
                          ),
                          CustomSideBar(
                            subPadding: 3.h,
                            svgImage: AppIcons.commentIcon,
                            voidCallback: () {
                              showFlexibleBottomSheet(
                                minHeight: 0,
                                initHeight: 0.7,
                                maxHeight: 0.9,
                                context: context,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(13.r),
                                    topRight: Radius.circular(13.r),
                                  ),
                                ),
                                builder: (context, scrollController,
                                    bottomSheetOffset) {
                                  return CustomCommentBottomSheet(
                                    postModel: postModel!,
                                  );
                                },
                              );
                            },
                            title: '64',
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          CustomSideBar(
                            subPadding: 3.h,
                            svgImage: AppIcons.kShareIcon,
                            voidCallback: () => onShare(),
                            title: ' ',
                          ),
                          SizedBox(
                            height: 34.h,
                          ),
                          //
                        ],
                      )),
                ),
                UserInfoCardWidget(
                  postModel: postModel!,
                ),
              ],
            );
          },
        ));
  }
}
