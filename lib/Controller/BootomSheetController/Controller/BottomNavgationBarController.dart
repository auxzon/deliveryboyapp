import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:deliveryapp/View/HomeScreen/Homecreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/color.dart';
import '../../../View/AccountScreen/AccountScreen.dart';
import '../../../View/OrderHistory/Orderhistory.dart';

class BottomNavigationBarController extends GetxController {
  final int index;
  late PageController pageController;
  late NotchBottomBarController notchController;
  BottomNavigationBarController({required this.index}) {
    notchController = NotchBottomBarController(index: index);
    pageController = PageController(initialPage: index);
  }

  List<Widget> screens = [
    OrderHistory(),
    Homecreen(),
    Accountscreen(),
  ];

  List<BottomBarItem> get navItems => [
    BottomBarItem(
      inActiveItem: Icon(
        Icons.shopping_cart_outlined,
        color: bottombarnotselectedcolor,
      ),
      activeItem: Icon(
        Icons.shopping_cart_outlined,
        color: bottombarselectedcolor,
      ),
    ),
    BottomBarItem(
      inActiveItem: Icon(
        Icons.home,
        color: bottombarnotselectedcolor,
      ),
      activeItem: Icon(
        Icons.home,
        color: bottombarselectedcolor,
      ),
    ),
    BottomBarItem(
      inActiveItem: Icon(
        Icons.person,
        color: bottombarnotselectedcolor,
      ),
      activeItem: Icon(
        Icons.person,
        color: bottombarselectedcolor,
      ),
    ),
  ];
}
