
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/res/app_colors.dart';

class BottomTextFieldWidget extends StatelessWidget {
  const BottomTextFieldWidget({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
      child: Container(
        width: 335.w,
        height: 70.h,
        padding: EdgeInsets.symmetric(vertical: 14.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: AppColors.backgroundColor,
            border: Border.all(
                color: AppColors.primaryColorLight, width: 1.w)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTextFormField(
                  isChatScreen: true,
                  hintText: 'Type your message here',
                  controller: _controller,
                  width: 230,
                  borderRadius: 1),
              const Icon(
                Icons.arrow_forward,
              ),
            ]),
      ),
    );
  }
}
