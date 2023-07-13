
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toktok/models/search_model.dart';
import 'package:toktok/res/app_colors.dart';

class UsersCardWidget extends StatefulWidget {
  final List<SearchModel> searchResults;
  const UsersCardWidget({super.key, required this.searchResults});

  @override
  State<UsersCardWidget> createState() => _UsersCardWidgetState();
}

class _UsersCardWidgetState extends State<UsersCardWidget> {
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Wrap(
                                    children: List.generate(
                                      widget.  searchResults.length, (index) {
                                      SearchModel searchModel =
                                         widget.  searchResults[index];
                                      return Column(
                                        children: [
                                          ListTile(
                                              leading: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    searchModel.users.image),
                                              ),
                                              title: Text(
                                                  searchModel.users.displayName,
                                                  style: appTextStyle
                                                      .titleMedium!
                                                      .copyWith(
                                                    color: AppColors
                                                        .lightBlackColor,
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              subtitle: Text(
                                                  searchModel.users.userName,
                                                  style: appTextStyle
                                                      .titleMedium!
                                                      .copyWith(
                                                    color: AppColors
                                                        .lightBlackColor,
                                                    fontSize: 12.sp,
                                                  )),
                                              trailing: searchModel
                                                      .users.isFollowing
                                                  ? InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          searchModel.users
                                                                  .isFollowing =
                                                              !searchModel.users
                                                                  .isFollowing;
                                                        });
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 16.w,
                                                          vertical: 6.h,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.sp),
                                                          border: Border.all(
                                                            color: AppColors
                                                                .primaryColor,
                                                          ),
                                                          color: AppColors
                                                              .primaryColor,
                                                        ),
                                                        child: Text('Follow',
                                                            style: appTextStyle
                                                                .titleMedium!
                                                                .copyWith(
                                                              color: AppColors
                                                                  .backgroundColor,
                                                              fontSize: 14.sp,
                                                            )),
                                                      ))
                                                  : null),
                                        ],
                                      );
                                    }

                                        //listTitle
                                        ),
                                  );
  }
}
