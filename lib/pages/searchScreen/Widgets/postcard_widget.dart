
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/models/search_model.dart';
import 'package:toktok/res/app_colors.dart';
import 'package:toktok/res/app_icons.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({
    super.key,
    required this.searchResults,
   
  });

  final List<SearchModel> searchResults;
 

  @override
  Widget build(BuildContext context) { final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Wrap(
        children: List.generate(searchResults.length,
            (index) {
          SearchModel searchModel =
              searchResults[index];
          return Column(
            children: [
              ListTile(
                onTap: () {
                  // Get.toNamed(RouteName.kLiveScreen, arguments: postModel);
                },
                title: Row(
                  children: [
                    CircleAvatar(
                      radius: 18.r,
                      backgroundImage: AssetImage(
                          searchModel.posts.user.image),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      searchModel
                          .posts.user.displayName,
                      style: appTextStyle.headlineSmall!
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
                subtitle: Container(
                  height: 427.h,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(7.r),
                      image: DecorationImage(
                          image: AssetImage(
                              searchModel.posts.image),
                          fit: BoxFit.cover)),
                  margin: EdgeInsets.only(top: 5.h),
                  child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.all(14.0)
                                  .copyWith(
                                      bottom: 3.h),
                          child: Icon(Icons.favorite,
                              color:
                                  AppColors.iconColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 20.w),
                          child: Text(
                            searchModel.posts.likesList
                                .toString(),
                            style:
                                appTextStyle.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.all(14.0)
                                  .copyWith(
                                      bottom: 3.h),
                          child: SvgPicture.asset(
                            AppIcons.chatIcon,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 23.w),
                          child: Text(
                            searchModel.posts
                                .commentsList.length
                                .toString(),
                            style:
                                appTextStyle.bodyMedium,
                          ),
                        ),
                      ]),
                ),
              )
            ],
          );
        }

            //listTitle
            ),
      );
  }
}
