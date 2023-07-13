import 'package:toktok/models/post_model.dart';
import 'package:toktok/models/user_model.dart';
import 'package:toktok/res/app_assetsurl.dart';

class SearchModel {
  UserModel users;

  PostModel posts;
  SearchModel({
    required this.users,
    required this.posts,
  });
}

List<SearchModel> searchList = [
  SearchModel(
    users: user1,
    posts: postList[0],
  ),
  SearchModel(
    users: user2,
    posts: postList[1],
  ),
  SearchModel(
    users: user3,
    posts: postList[2],
  ),
  SearchModel(
    users: user4,
    posts: postList[3],
  ),
];
List<String> hashTagList = [
  AppAssets.kHashtagImage1,
  AppAssets.kHashtagImage2,
  AppAssets.kHashtagImage3,
  AppAssets.kHashtagImage4,
  AppAssets.kHashtagImage5,
  AppAssets.kHashtagImage6,
  AppAssets.kHashtagImage7,
  AppAssets.kHashtagImage8,
];

List<String> resHashTagList = [
  AppAssets.kHashtagImage8,
  AppAssets.kHashtagImage7,
  AppAssets.kHashtagImage6,
  AppAssets.kHashtagImage5,
  AppAssets.kHashtagImage4,
  AppAssets.kHashtagImage3,
  AppAssets.kHashtagImage2,
  AppAssets.kHashtagImage1,
];
List<String> hashDetailList = [
  AppAssets.kHashtagImage9,
  AppAssets.kHashtagImage10,
  AppAssets.kHashtagImage11,
  AppAssets.kHashtagImage12,
  AppAssets.kHashtagImage13,
  AppAssets.kHashtagImage14,
  AppAssets.kHashtagImage15,
  AppAssets.kHashtagImage16,
  AppAssets.kHashtagImage17,
  AppAssets.kHashtagImage18,
  AppAssets.kHashtagImage19,
  AppAssets.kHashtagImage20,
  AppAssets.kHashtagImage21,
  AppAssets.kHashtagImage22,
  AppAssets.kHashtagImage23,
];

List<String> slideList = [
  AppAssets.kSlide1Image,
  AppAssets.kSlide2Image,
];
