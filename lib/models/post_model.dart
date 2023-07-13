import 'package:toktok/models/comment_model.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/res/app_assetsurl.dart';

class PostModel {
  final String image;
  final String date;
  UserModel user;
  int likesList;
  List<CommentModel> commentsList;
  PostModel({
    required this.image,
    required this.date,
    required this.user,
    required this.likesList,
    required this.commentsList,
  });
}

List<PostModel> postList = [
  PostModel(
    image: AppAssets.postImage1,
    commentsList: commentList,
    date: 'TU 12:00 PM',
    likesList: 87,
    user: user1,
  ),
  PostModel(
    image: AppAssets.postImage2,
    commentsList: commentList,
    date: 'TU 12:00 PM',
    likesList: 12,
    user: user2,
  ),
  PostModel(
    image: AppAssets.postImage1,
    commentsList: commentList,
    date: 'TU 12:00 PM',
    likesList: 12,
    user: user3,
  ),
  PostModel(
    image: AppAssets.postImage2,
    commentsList: commentList,
    date: 'TU 12:00 PM',
    likesList: 23,
    user: user4,
  ),
  PostModel(
    image: AppAssets.postImage1,
    commentsList: commentList,
    date: 'TU 12:00 PM',
    likesList: 16,
    user: user4,
  ),
];

List<String> currentUserPostList = [
  AppAssets.profilePostImage1,
  AppAssets.profilePostImage2,
  AppAssets.profilePostImage3,
  AppAssets.profilePostImage4,
  AppAssets.profilePostImage5,
  AppAssets.profilePostImage6,
  AppAssets.profilePostImage1,
  AppAssets.profilePostImage2,
  AppAssets.profilePostImage3,
  AppAssets.profilePostImage4,
  AppAssets.profilePostImage5,
  AppAssets.profilePostImage6,
  AppAssets.profilePostImage1,
  AppAssets.profilePostImage2,
  AppAssets.profilePostImage3,
  AppAssets.profilePostImage4,
  AppAssets.profilePostImage5,
  AppAssets.profilePostImage6,
];
