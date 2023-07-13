import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/models/chat_model.dart';
import 'package:toktok/models/message_list_model.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/pages/chatScreen/widgets/bottom_textfieldwidget.dart';
import 'package:toktok/pages/chatScreen/widgets/chat_list_widget.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class ChatDetailsScreen extends StatefulWidget {
  ChatDetailsScreen({
    Key? key,
  }) : super(key: key);
  @override
  _ChatDetailsScreenState createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  ChatModel? mychat;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mychat = Get.arguments;
  }

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text('Chat',
            style: appTextStyle.labelMedium!.copyWith(
              color: AppColors.lightBlackColor,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.infoIcon),
          ),
        ],
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mychat!.messagingList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                MessageModel messages = mychat!.messagingList[index];
                return ListTile(
                  leading: messages.messageType == "receiver"
                      ? CircleAvatar(
                          backgroundImage: AssetImage(mychat!.user.image))
                      : null,
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Align(
                      alignment: (messages.messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: messages.messageType == "receiver"
                                ? AppColors.backgroundColor
                                : AppColors.primaryColor),
                        padding: messages.messageType == "sender"
                            ? EdgeInsets.only(
                                left: 15.w,
                                right: 3.w,
                                top: 11.h,
                                bottom: 12.h,
                              )
                            : EdgeInsets.only(
                                left: 16.w,
                                right: 25.w,
                                top: 11.h,
                                bottom: 8.h,
                              ),
                        child: Text(
                          messages.message,
                          style: messages.messageType == 'receiver'
                              ? appTextStyle.titleMedium!.copyWith(
                                  color: Colors.black,
                                )
                              : appTextStyle.titleMedium!
                                  .copyWith(color: AppColors.backgroundColor),
                        ),
                      ),
                    ),
                  ),
                  subtitle: Align(
                      alignment: (messages.messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Text(messages.time,
                          style: appTextStyle.caption!.copyWith(
                            color: Colors.grey.shade400,
                            fontSize: 12.sp,
                          ))),
                  trailing: messages.messageType == "sender"
                      ? CircleAvatar(
                          backgroundImage: AssetImage(currentUserModel.image))
                      : null,
                );
              },
            ),
          ),
          BottomTextFieldWidget(controller: _controller)
        ],
      ),
    );
  }
}
