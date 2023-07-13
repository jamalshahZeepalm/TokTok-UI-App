 
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
 
import 'package:toktok/models/search_model.dart';

class SearchesController extends GetxController{
  TextEditingController textSearchController = TextEditingController();

  RxBool isSearchOn = false.obs;
  List<SearchModel> searchResults = [];

  @override
  void onInit() {
    super.onInit();
    textSearchController.addListener(performSearch);
  }

  @override
  void dispose() {
    super.dispose();
    textSearchController.removeListener(performSearch);
    textSearchController.dispose();
  }

  void performSearch() {
    String searchText = textSearchController.text;

    searchResults = searchTrendingList(searchText) ?? [];
    isSearchOn.value = textSearchController.text.isNotEmpty;
    update();
  }

  List<SearchModel>? searchTrendingList(String searchText) {
    searchText = searchText.toLowerCase();
    List<SearchModel> searchResults = searchList.where((model) {
      String userName = model.users.userName.toLowerCase();
      String userPost = model.posts.user.userName.toLowerCase();

      return userName.contains(searchText) || userPost.contains(searchText);
    }).toList();
    if (kDebugMode) {
      print(searchResults.length);
    }
    return searchResults;
  }
}
