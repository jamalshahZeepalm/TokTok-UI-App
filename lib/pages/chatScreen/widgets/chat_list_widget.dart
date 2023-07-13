import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toktok/models/chat_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/routes/route_name.dart';

class ChatWidget extends StatelessWidget {
  ChatModel chatModel;

  ChatWidget({Key? key, required this.chatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        // Get.to(() => ChatDetailsScreen(mychat: mychat),
        //     transition: Transition.fadeIn);
        Get.toNamed(RouteName.kChatDetailsScreen, arguments: chatModel);
      },
      child: ListTile(
        leading: Hero(
          tag: chatModel.user.image,
          child: Container(
            width: 62.w,
            height: 62.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage(chatModel.user.image),
                    fit: BoxFit.cover)),
          ),
        ),
        title: Text(
          chatModel.user.displayName,
          style: appTextStyle.bodyMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          chatModel.message,
          style: appTextStyle.bodySmall!.copyWith(
            color: AppColors.lightTinyGreyColor,
          ),
        ),
        trailing: Text(
          chatModel.time,
          style: appTextStyle.bodyMedium!.copyWith(
            color: AppColors.lightBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
