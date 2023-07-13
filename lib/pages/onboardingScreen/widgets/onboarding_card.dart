import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/animation/slidetransition_animation.dart';
import 'package:toktok/models/onboarding_model.dart';

class OnBoardingCard extends StatefulWidget {
  OnBoardingModel onBoardingModel;
  OnBoardingCard({
    super.key,
    required this.onBoardingModel,
  });

  @override
  State<OnBoardingCard> createState() => _OnBoardingCardState();
}

class _OnBoardingCardState extends State<OnBoardingCard>
    {
  
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return SlideTransitionAnimation(
      
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 585.h),
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                from: 100,
                child: Text(
                  widget.onBoardingModel.title,
                  textAlign: TextAlign.center,
                  style: appTextStyle.headlineMedium,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              FadeInUp(
                from: 67,
                child: Text(widget.onBoardingModel.description,
                    textAlign: TextAlign.center,
                    style: appTextStyle.bodyMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
