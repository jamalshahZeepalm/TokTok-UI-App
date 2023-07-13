import 'package:toktok/models/message_list_model.dart';
import 'package:toktok/models/user_model.dart';

class ChatModel {
  final String message;
  final String time;
  final List<MessageModel> messagingList;

  final UserModel user;
  ChatModel(  {
    required this.message,
    required this.time,
    required this.user, required this.messagingList,});
}

List<ChatModel> chatList = [
  ChatModel(
    message: 'Hello',
    time: '12:00',
    user: user1,
    messagingList: messagingList,
  
  ),

  ChatModel(
    message: "Okay I'm waiting  👍",
    time: '11:00',
    user: user2,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'Hello Hey!',
    time: '03:00',
    user: user3,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'im coming now',
    time: '01:10',
    user: user4,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'are you ready?',
    time: '01:20',
    user: user5,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'your order is ready',
    time: '12:10',
    user: user6,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'why are you late?',
    time: '09:00',
    user: user7,  messagingList: messagingList,
  ),
  ChatModel(
    message: 'this is my order',
    time: '07:00',
    user: user8,  messagingList: messagingList,
  ),
];
