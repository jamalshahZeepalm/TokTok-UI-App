import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class BottomTextFieldWidget extends StatelessWidget {
  const BottomTextFieldWidget({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 70.h,
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        PrimaryTextFormField(
            isChatScreen: true,
            hintText: 'Type your message here',
            controller: _controller,
            width: 230,
            borderRadius: 1),
        SvgPicture.asset(AppIcons.kBlackMessageIcon)
      ]),
    );
  }
}
