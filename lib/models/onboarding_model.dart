import 'package:toktok/res/app_assetsurl.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String description;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      image: AppAssets.onboarding1,
      title: 'Share Posts',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidi.'),
  OnBoardingModel(
      image: AppAssets.onboarding2,
      title: 'Live Stories',
      description:
          'Exercise can improve your stability and also what is called your "kinesthetic awarness"'),
  OnBoardingModel(
      image: AppAssets.onboarding3,
      title: 'Explore',
      description:
          'Create your own workout plans personalized to your goals to help you get in shape.'),
];
