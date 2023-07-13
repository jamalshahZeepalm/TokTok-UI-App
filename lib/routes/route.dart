import 'package:get/get.dart';
import 'package:toktok/pages/addPostScreen/camera_screen.dart';
import 'package:toktok/pages/authScreen/forget_screen.dart';
import 'package:toktok/pages/authScreen/signInscreen.dart';
import 'package:toktok/pages/authScreen/signup_screen.dart';
import 'package:toktok/pages/chatScreen/chatdetails_screen.dart';
import 'package:toktok/pages/homeScreen/live_screen.dart';
import 'package:toktok/pages/landingScreen/landing_screen.dart';
import 'package:toktok/pages/profileScreen/confirmation_screen.dart';
import 'package:toktok/pages/profileScreen/notification_Screen.dart';
import 'package:toktok/pages/profileScreen/editProfile.dart';
import 'package:toktok/pages/profileScreen/fanfollowing_screen.dart';
import 'package:toktok/pages/profileScreen/profile_screen.dart';
import 'package:toktok/pages/searchScreen/hashtags_screen.dart';
import 'package:toktok/routes/route_name.dart';
import 'package:toktok/pages/onboardingScreen/onboarding_screen.dart';
import 'package:toktok/pages/splashScreen/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
            name: RouteName.kSplashScreen,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.kOnboardingScreen,
            page: () => const OnBoardingScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
          name: RouteName.kLoginScreen,
          page: () => const SignInScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kForgotPasswordScreen,
          page: () => ForgetScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kSignUpScreen,
          page: () => SignUpScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kLandingScreen,
          page: () => const LandingScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kEditProfileScreen,
          page: () => const EditProfileScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kFanFollowingScreen,
          page: () => const FanFollowingScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kProfileScreen,
          page: () => const ProfileScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kLiveScreen,
          page: () => const LiveScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kNotificationScreen,
          page: () => const NotificationScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.kCameraScreen,
          page: () => CameraScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: RouteName.kChatDetailsScreen,
          page: () => ChatDetailsScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: RouteName.kConfirmationsScreen,
          page: () => const ConfirmationsScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: RouteName.kHashtagsScreen,
          page: () => const HashtagsScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeftWithFade,
        ),
      ];
}
