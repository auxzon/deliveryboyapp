import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:deliveryapp/Controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigator extends StatelessWidget {
  final int index;
  BottomNavigator({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BottomNavigationBarController(index: index));
    print("index : ${index}");
    return BaseScreen(
      child: PageView(
        allowImplicitScrolling: true,
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: controller.screens,
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: controller.notchController,
        color: Theme.of(context).colorScheme.primary.withOpacity(.6),
        showLabel: true,
        textOverflow: TextOverflow.visible,
        shadowElevation: 5,
        kBottomRadius: 28.0,
        notchColor: Theme.of(context).colorScheme.inversePrimary,
        removeMargins: false,
        showShadow: true,
        durationInMilliSeconds: 300,
        itemLabelStyle: const TextStyle(fontSize: 10),
        elevation: 1,
        kIconSize: 24.0,
        bottomBarItems: controller.navItems,
        onTap: (selectedIndex) {
          log('Selected index: $selectedIndex');
          controller.pageController.jumpToPage(selectedIndex);
        },
      ),
    );
  }
}
