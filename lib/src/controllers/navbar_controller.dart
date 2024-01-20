import 'package:flutter/material.dart';
import 'package:funly/src/view/add/add_screen.dart';
import 'package:funly/src/view/favorite/favorite_screen.dart';
import 'package:funly/src/view/home/home_screen.dart';
import 'package:funly/src/view/profile/profile_screen.dart';
import 'package:funly/src/view/search/search_screen.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  RxInt index = 0.obs;

  List<Widget> page = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  int get currentIndex => index.value;
  void setIndex(int newValue) {
    index.value = newValue;
  }
}
