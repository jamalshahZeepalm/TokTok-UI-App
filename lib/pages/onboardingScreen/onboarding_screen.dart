import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primary_button.dart';
import 'package:toktok/general_widgets/primary_textbutton.dart';
import 'package:toktok/models/onboarding_model.dart';
import 'package:toktok/pages/onboardingScreen/widgets/onboarding_card.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/routes/route_name.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  bool launchAnimation = true;
  @override
  void didChangeDependencies() {
    preloadImages();
    super.didChangeDependencies();
  }

  Future<void> preloadImages() async {
    for (var onBoardingModel in onBoardingList) {
      await precacheImage(AssetImage(onBoardingModel.image), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            onBoardingList[_currentIndex].image,
            height: Get.height,
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: const Color(0xff3B5998).withOpacity(0.5),
          ),
          PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: onBoardingList.length,
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.jumpToPage(index);
                  // _lowerPageController.jumpToPage(index);
                });
              },
              itemBuilder: (context, index) {
                return OnBoardingCard(
                  onBoardingModel: onBoardingList[index],
                );
              }),
          Container(
            margin: EdgeInsets.only(top: 50.h, right: 28.w, bottom: 52.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: PrimaryTextButton(
                      textColor: Colors.white,
                      onPressed: () {
                        Get.offAndToNamed(RouteName.kLoginScreen);
                      },
                      title: 'Skip',
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DotsIndicator(
                      dotsCount: onBoardingList.length,
                      position: _currentIndex,
                      decorator: DotsDecorator(
                        color: AppColors.backgroundColor.withOpacity(0.4),
                        size: const Size.square(8.0),
                        activeSize: const Size(20.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        activeColor: AppColors.backgroundColor,
                      ),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: PrimaryTextButton(
                          textColor: Colors.white,
                          onPressed: () {
                            if (_currentIndex == onBoardingList.length - 1) {
                              Get.offAndToNamed(RouteName.kLoginScreen);
                            } else {
                              setState(() {
                                // _pageController.jumpToPage(_currentIndex++);
                                // _pageController.nextPage(
                                //   duration: const Duration(milliseconds: 20),
                                //   curve: Curves.easeIn,
                                // );
                                _pageController.animateToPage(
                                  _currentIndex + 1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              });
                            }
                          },
                          title: 'Next',
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
