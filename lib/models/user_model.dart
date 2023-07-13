import 'package:toktok/res/app_assetsurl.dart';

class UserModel {
  String displayName;
  String userName;
  String email;
  bool isFollowing;
  String id;
  String phone;
  String address;
  String image;
  UserModel({
    required this.displayName,
    required this.userName,
    required this.email,
    required this.phone,
    required this.address,
    required this.image,
    required this.isFollowing,
    required this.id,
  });
}

UserModel currentUserModel = UserModel(
    displayName: 'Daya Chitanis',
    userName: 'Daya12',
    email: 'Daya@Info.com',
    phone: '+92345134',
    address: 'San Francisco, CA',
    isFollowing: true,
    image: AppAssets.currentProfileImage,
    id: '1');
UserModel user1 = UserModel(
    displayName: 'Luvleen Lawrence',
    userName: 'Luvleen',
    email: 'Luvleen@gmail.com',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage1,
    id: '2');
UserModel user2 = UserModel(
    displayName: 'Mokkwang Lee',
    userName: 'Mokkwang',
    email: 'Mokkwang@gmail.com',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage2,
    id: '3');
UserModel user3 = UserModel(
    displayName: 'Nembo',
    userName: 'harrison93',
    email: '',
    isFollowing: true,
    phone: '+92345134',
    address: 'San Francisco, CA',
    image: AppAssets.profileImage3,
    id: '4');

UserModel user4 = UserModel(
    displayName: 'Kong Yi Jun',
    userName: 'anaru',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage4,
    id: '5');

UserModel user5 = UserModel(
    displayName: 'Akumjeli Akuchi',
    userName: 'AkumjeliAkuchi',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage5,
    id: '6');
UserModel user6 = UserModel(
    displayName: 'Shirai Subaru',
    userName: 'mariano',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage16,
    id: '7');

UserModel user7 = UserModel(
    displayName: 'Trienke van Aartsen',
    userName: 'sofia_star123',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage19,
    id: '8');
UserModel user8 = UserModel(
    displayName: 'Isak Johannesson',
    userName: 'johannesson',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage12,
    id: '9');
UserModel user9 = UserModel(
    displayName: 'Nerte Gronw',
    userName: 'mariano',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage15,
    id: '10');
UserModel user10 = UserModel(
    displayName: 'Teng Hu',
    userName: 'guiyingxun',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage18,
    id: '11');
UserModel user11 = UserModel(
    displayName: 'Stephanus Huggins',
    userName: 'carlota',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage17,
    id: '12');
UserModel user12 = UserModel(
    displayName: 'Masood El Toure',
    userName: 'helena',
    email: '',
    phone: '+92345134',
    isFollowing: true,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage14,
    id: '13');
UserModel user13 = UserModel(
    displayName: 'Elston Gullan',
    userName: 'elstongullan993',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage9,
    id: '14');
UserModel user14 = UserModel(
    displayName: 'Harrison Phillips',
    userName: 'harrison93',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage10,
    id: '15');
UserModel user15 = UserModel(
    displayName: 'Beth Murphy',
    userName: 'sofia_star123',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage6,
    id: '16');
UserModel user16 = UserModel(
    displayName: 'Mariano Rasgado',
    userName: 'mariano',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage13,
    id: '17');
UserModel user17 = UserModel(
    displayName: 'Xun Guiying',
    userName: 'guiyingxun',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage20,
    id: '18');
UserModel user18 = UserModel(
    displayName: 'Carlota Perez',
    userName: 'carlota',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage7,
    id: '19');
UserModel user19 = UserModel(
    displayName: 'Helena Brauer',
    userName: 'helena',
    email: '',
    phone: '+92345134',
    isFollowing: false,
    address: 'San Francisco, CA',
    image: AppAssets.profileImage11,
    id: '20');

List<UserModel> fanUsersList = [
  user1,
  user2,
  user3,
  user4,
  user5,
  user6,
  user7,
  user8,
  user9,
  user10,
  user11,
  user12,
  user1,
  user2,
  user3,
  user4,
  user5,
  user6,
  user7,
  user8,
  user9,
  user10,
  user11,
  user12,
];
List<UserModel> followingUsersList = [
  user13,
  user14,
  user15,
  user16,
  user17,
  user18,
  user19,
  user13,
  user14,
  user15,
  user16,
  user17,
  user18,
  user19,
];
List<UserModel> usersList = [
   user1,
  user2,
  user3,
  user4,
  user5,
  user6,
  user7,
  user8,
  user9,
  user10,
  user11,
  user12,
  user1,
  user2,
  user3,
  user4,
  user5,
  user6,
  user7,
  user8,
  user9,
  user10,
  user11,
  user12, user13,
  user14,
  user15,
  user16,
  user17,
  user18,
  user19,
  user13,
  user14,
  user15,
  user16,
  user17,
  user18,
  user19,
];
