import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:toktok/models/chat_model.dart';
import 'package:toktok/pages/chatScreen/widgets/chat_list_widget.dart';

import 'widgets/chatappbar_widget.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: ChatAppBar(
        title: 'Chats',
        rightIcon: Icons.search,
        onRightIconPress: () {},
      ),
      body: AnimationLimiter(
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: chatList.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 600),
                child: SlideAnimation(
                    curve: Curves.linearToEaseOut,
                    verticalOffset: 80.0,
                    child: FadeInAnimation(
                        curve: Curves.slowMiddle,
                        child: ChatWidget(chatModel: chatList[index]))));
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 12.h,
            );
          },
        ),
      ),
    );
  }
}
