import 'package:toktok/models/user_model.dart';

class CommentModel {
  String comment;
  UserModel user;
  String date;
  String time;

  String id;
  String postId;
  CommentModel({
    required this.comment,
    required this.user,
    required this.date,
    required this.time,
    required this.id,
    required this.postId,
  });
}

List<CommentModel> commentList = [
  CommentModel(
    comment: 'Lern it when I was 8 now I’m 10 (so many year )',
    user: user1,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '1',
    postId: '1',
  ),
  CommentModel(
    comment: ' I learned that in 40th grade It’s pretty cool',
    user: user2,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '2',
    postId: '1',
  ),
  CommentModel(
    comment: 'Learnt it year 1',
    user: user3,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '3',
    postId: '1',
  ),
  CommentModel(
    comment: 'I knew that trick',
    user: user4,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '4',
    postId: '1',
  ),
  CommentModel(
    comment: 'Learnt it year 1',
    user: user5,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '5',
    postId: '1',
  ),
  CommentModel(
    comment: 'Learnt it year 1',
    user: user5,
    date: '12/12/2021',
    time: '12:00 PM',
    id: '6',
    postId: '1',
  )
];
