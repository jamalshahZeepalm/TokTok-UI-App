// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';

import 'package:toktok/models/comment_model.dart';
import 'package:toktok/models/post_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class CustomCommentBottomSheet extends StatelessWidget {
  final PostModel postModel;
  CustomCommentBottomSheet({
    Key? key,
    required this.postModel,
  }) : super(key: key);
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(height: 10.h),
        Text(
          '${postModel.commentsList.length} comments',
          style: appTextStyle.labelMedium!.copyWith(
              color: AppColors.lightBlackColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: commentList.length,
            itemBuilder: (context, index) {
              return BottomSheetMethod(comments: postModel.commentsList[index]);
            },
          ),
        ),
        Container(
            color: AppColors.backgroundColor,
            width: Get.width,
            height: 60.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 26.w, top: 17.h, right: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.multiline,
                        cursorColor: AppColors.darkBlueColor,
                        style: appTextStyle.titleMedium!.copyWith(
                          color: AppColors.lightBlackColor,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 13.h),
                          fillColor: Colors.transparent,
                          hintText: 'say something nice...',
                          hintStyle: appTextStyle.labelSmall,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        onChanged: (va) {},
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '@',
                          style: appTextStyle.titleMedium!.copyWith(
                              color: AppColors.lightBlackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset(AppIcons.kEmojiIcon)
                      ],
                    ),
                    // SizedBox(width: 22.w),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class BottomSheetMethod extends StatefulWidget {
  final CommentModel comments;
  const BottomSheetMethod({
    Key? key,
    required this.comments,
  }) : super(key: key);

  @override
  State<BottomSheetMethod> createState() => _BottomSheetMethodState();
}

class _BottomSheetMethodState extends State<BottomSheetMethod> {
  bool heart = false;

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.comments.user.image),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 15.h),
        child: Text(
          widget.comments.user.displayName,
          style: appTextStyle.bodyMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.comments.time,
              style: appTextStyle.bodySmall!.copyWith(
                color: AppColors.lightTinyGreyColor,
              ),
            ),
            Text(
              widget.comments.comment,
              style: appTextStyle.bodyMedium!.copyWith(
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w500,
              ),
            )
          ]),
      trailing: Padding(
        padding: EdgeInsets.only(top: 4.h),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  heart = !heart;
                });
              },
              child: heart
                  ? SvgPicture.asset(
                      AppIcons.kHeartIcon,
                      width: 24.w,
                      height: 24.w,
                      color: AppColors.iconColor,
                    ) // pink heart

                  : Icon(
                      Icons.favorite_border_outlined,
                      color: AppColors.grey40Color,
                    ),
            ), //white heart
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                '2',
                style: appTextStyle.bodySmall!.copyWith(
                    color: AppColors.backgroundColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
