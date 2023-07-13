
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/res/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title,
    this.svgIcon,
    this.onPressed,
  }) : super(key: key);

  final String? title, svgIcon;
  final Function()? onPressed;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: Text(
        title!,
        style: appTextStyle.headline6!.copyWith(
          color: AppColors.lightBlackColor,
        ),
      ),
      elevation: 0,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(svgIcon!),
        ),
      ],
    );
  }
}
