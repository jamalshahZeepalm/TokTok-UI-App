
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/routes/route_name.dart';

class HorizontalImageScrollWidget extends StatelessWidget {
  final List<String> hashtagList;
  const HorizontalImageScrollWidget({super.key, required this.hashtagList});

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: List.generate(
                              hashtagList.length,
                              (index) => Padding(
                                padding: EdgeInsets.only(right: 6.w),
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.kHashtagsScreen);
                                  },
                                  child: Image.asset(
                                    hashtagList[index].toString(),
                                    width: 93.w,
                                    height: 140.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
  }
}