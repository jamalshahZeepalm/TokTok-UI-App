import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    super.key,
    required this.textColor,
    required this.onPressed,
    required this.title,
  });
  final Function() onPressed;
  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style: appTextStyle.titleLarge!
            .copyWith(fontSize: 16.sp, color: textColor),
      ),
    );
  }
}
