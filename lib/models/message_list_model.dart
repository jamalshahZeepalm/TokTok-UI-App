class MessageModel {
  String message;
  String messageType;
  String time;
  String id;
  MessageModel({
    required this.message,
    required this.messageType,
    required this.time,
    required this.id,
  });
}

List<MessageModel> messagingList = [
  MessageModel(
    message: "Hi dear, can I help you with our amazing products?",
    messageType: 'receiver',
    time: '11:00',
    id: '2',
  ),
  MessageModel(
    message: 'Hi John!',
    messageType: 'sender',
    time: '03:00',
    id: '3',
  ),
  MessageModel(
    message: 'Sounds good. I’m looking for new shoes.',
    messageType: 'sender',
    time: '01:10',
    id: '4',
  ),
  MessageModel(
    message: 'Great …',
    messageType: 'receiver',
    time: '01:20',
    id: '5',
  ),
  MessageModel(
    message: 'your order is ready',
    messageType: 'receiver',
    time: '12:10',
    id: '6',
  ),
  MessageModel(
    message: 'why are you late?',
    messageType: 'sender',
    time: '09:00',
    id: '7',
  ),
  MessageModel(
    message: 'sorry I was busy',
    messageType: 'receiver',
    time: '07:00',
    id: '8',
  ),
  MessageModel(
    message: '•••••',
    messageType: 'receiver',
    time: '07:00',
    id: '9',
  ),
  MessageModel(
    message: '•••••',
    messageType: 'receiver',
    time: '07:00',
    id: '9',
  ),
  MessageModel(
    message: '•••••',
    messageType: 'receiver',
    time: '07:00',
    id: '9',
  ),
];
