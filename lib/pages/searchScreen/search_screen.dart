import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:toktok/controllers/searchscontroller.dart';

import 'package:toktok/general_widgets/primarytextfield.dart';
import 'package:toktok/models/search_model.dart';
import 'package:toktok/pages/searchScreen/Widgets/hashtag_widget.dart';
import 'package:toktok/pages/searchScreen/Widgets/postcard_widget.dart';
import 'package:toktok/pages/searchScreen/Widgets/userscard_widget.dart';
import 'package:toktok/res/app_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme appTextStyle = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Search',
              style: appTextStyle.labelMedium!.copyWith(
                color: AppColors.lightBlackColor,
              )),
        ),
        body: GetBuilder<SearchesController>(
          init: SearchesController(),
          builder: (sc) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  PrimaryTextFormField(
                    hintText: 'Search',
                    controller: sc.textSearchController,
                    width: 335.w,
                    height: 40.h,
                    borderRadius: 23.r,
                    prefixIcon: sc.isSearchOn.value
                        ? GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              sc.isSearchOn.value = false;
                              setState(() {});
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.lightTinyGreyColor,
                            ),
                          )
                        : Icon(
                            Icons.search_outlined,
                            color: AppColors.lightTinyGreyColor,
                          ),
                    onChanged: (value) {
                      setState(() {
                        sc.isSearchOn.value = true;
                        sc.update();
                      });
                    },
                  ),
                  sc.isSearchOn.value
                      ? Column(
                          children: [
                            (sc.searchResults.isEmpty)
                                ? Padding(
                                    padding: EdgeInsets.only(top: 100.h),
                                    child: Center(
                                      child: Text('Not Found!  ',
                                          style: appTextStyle.labelMedium!
                                              .copyWith(
                                            color: AppColors.lightBlackColor,
                                          )),
                                    ),
                                  )
                                : UsersCardWidget(
                                    searchResults: sc.searchResults),
                            (sc.searchResults.isEmpty)
                                ? Center(
                                    child: Text(' ',
                                        style:
                                            appTextStyle.labelMedium!.copyWith(
                                          color: AppColors.lightBlackColor,
                                        )),
                                  )
                                : PostCardWidget(
                                    searchResults: sc.searchResults,
                                  )
                          ],
                        )
                      : HashTagWidget(),
                ],
              ),
            );
          },
        ));
  }
}
