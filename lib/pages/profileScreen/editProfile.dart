import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:toktok/data/const.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/pages/profileScreen/Widgets/reusable_listtile.dart';
import 'package:toktok/res/app_assetsurl.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';
import 'package:toktok/routes/route_name.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? controller;
  final GlobalKey<AnimatedListState> _listkey = GlobalKey<AnimatedListState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      addData();
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    400.milliseconds.delay().then(
          (value) => controller?.forward(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
    _controller?.dispose();
  }

  List<Widget> newList = [];

  void addData() {
    Future ft = Future(() {});
    reUsableList.forEach((var reUsableList) {
      ft = ft.then((value) {
        return Future.delayed(const Duration(milliseconds: 300), () {
          newList.add(ReUsableListTile(
              icon: reUsableList['icon'],
              title: reUsableList['title'],
              onPressed: reUsableList['onPressed']));
          _listkey.currentState!.insertItem(newList.length - 1);
        });
      });
    });
  }

  Tween<Offset> _offset =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0));
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text('Settings',
            style: appTextStyle.labelMedium!.copyWith(
              color: AppColors.lightBlackColor,
            )),
        centerTitle: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      body: Column(
        children: [
          const Divider(),
          SizedBox(height: 16.h),
          ScaleTransition(
            scale: controller!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage:
                      const AssetImage(AppAssets.currentProfileImage),
                ),
                SizedBox(height: 10.h),
                Text(
                  currentUserModel.displayName,
                  style: appTextStyle.headlineLarge!.copyWith(
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  currentUserModel.address,
                  style: appTextStyle.titleMedium!.copyWith(
                      color: AppColors.lightBlackColor, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: AnimatedList(
              key: _listkey,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index, Animation<double> Animation) {
                return SlideTransition(
                  position: Animation.drive(_offset),
                  child: newList[index],
                );
              },
              initialItemCount: newList.length,
            ),
          ),
        ],
      ),
    );
  }
}
