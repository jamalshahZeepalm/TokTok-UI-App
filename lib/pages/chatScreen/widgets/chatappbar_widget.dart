
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/res/app_colors.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData rightIcon;
  final Function()? onRightIconPress;

  const ChatAppBar({
    Key? key,
    required this.rightIcon,
    required this.title,
    this.onRightIconPress,
  
  }) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title,
          style: appTextStyle.labelMedium!.copyWith(
            color: AppColors.lightBlackColor,
          )),
      centerTitle: true,
    
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 7.w),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              rightIcon,
              // color: CustomColors.kAppBarIconColor,
            ),
            onPressed: onRightIconPress,
          ),
        ),
      ],
    );
  }
}
