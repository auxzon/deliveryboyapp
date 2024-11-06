import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../Utils/color.dart';
import '../../../View/HomeScreen/Homecreen.dart';
import '../../../View/MyProfile/Profile.dart';
import '../../../View/Notification/Notification.dart';

class BottomNavigationBarController extends GetxController {
  BottomNavigationBarController({required this.index});
  final int index;
  late PersistentTabController navcontroller;

  List<Widget> screens = [
    OrderNotification(),
    Homecreen(),
    MyProfile(),
  ];

  List<PersistentBottomNavBarItem> navItems = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.reorder_rounded),
      title: ("Notification"),
      activeColorPrimary: bottombarselectedcolor,
      inactiveColorPrimary:bottombarnotselectedcolor,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: bottombarselectedcolor,
      inactiveColorPrimary:bottombarnotselectedcolor,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person),
      title: ("Profile"),
      activeColorPrimary: bottombarselectedcolor,
      inactiveColorPrimary:bottombarnotselectedcolor,
    ),
  ];
  // hide bottom sheet

  // var hidebtmsheet = true.obs;
  // HideBtmSheet(){
  //   hidebtmsheet.value = false;
  // }
  @override
  void onInit() {
    navcontroller = PersistentTabController(initialIndex: index);
    // hidebtmsheet.value = true;
    super.onInit();
  }
}
