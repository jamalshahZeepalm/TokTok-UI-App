import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toktok/general_widgets/animation/grid_animation.dart';
import 'package:toktok/models/search_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class HashtagsScreen extends StatelessWidget {
  const HashtagsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('#dancechallenge',
            style: appTextStyle.labelMedium!.copyWith(
                color: AppColors.lightBlackColor, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.kShareIcon,
              color: AppColors.lightBlackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            Padding(
              padding: EdgeInsets.only(
                top: 16.h,
              ),
              child: SizedBox(
                width: 267.w,
                height: 50.h,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                  style: appTextStyle.bodySmall!.copyWith(
                    color: AppColors.lightBlackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GridAnimator(
              time: Duration(milliseconds: 900),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: hashDetailList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7.5,
                    mainAxisSpacing: 7.5),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.asset(hashDetailList[index].toString()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
