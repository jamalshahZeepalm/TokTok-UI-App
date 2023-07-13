
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/models/search_model.dart';
import 'package:toktok/pages/searchScreen/Widgets/horizontalimagescroll_widget.dart';
import 'package:toktok/pages/searchScreen/Widgets/timelap_widget.dart';

class HashTagWidget extends StatelessWidget {
    HashTagWidget({super.key});
final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
     final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Column(children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        height: 164.h,
                        width: Get.width,
                        child: CarouselSlider(
                            items: List.generate(
                              slideList.length,
                              (index) => Image.asset(
                                slideList[index].toString(),
                                height: 164.h,
                              ),
                            ),
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              viewportFraction: 0.8,
                              aspectRatio: 0.2,
                              initialPage: 0,
                            )),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TimeLapwidget(appTextStyle: appTextStyle),
                      HorizontalImageScrollWidget(hashtagList: hashTagList),
                      TimeLapwidget(appTextStyle: appTextStyle),
                      HorizontalImageScrollWidget(hashtagList: resHashTagList),
                      SizedBox(
                        height: 29.h,
                      ),
                    ]);
  }
}