import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:toktok/res/app_colors.dart';

class SecondaryButton extends StatefulWidget {
  final VoidCallback onTap;
  final String icons;
  final double? width;
  final double? height;
  final double borderRadius;
  final double? fontSize;
  final Color bgColor;
  const SecondaryButton(
      {super.key,
      required this.onTap,
      this.width,
      this.height,
      required this.icons,
      required this.borderRadius,
      this.fontSize,
      required this.bgColor});

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          height: widget.height,
          alignment: Alignment.center,
          width: widget.width,
          decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(
                color: AppColors.lightGreyColor,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.lightGreyColor.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ]),
          child: Image.asset(
            widget.icons,
            width: 23.85.w,
            height: 23.04.w,
          ),
        ),
      ),
    );
  }
}
