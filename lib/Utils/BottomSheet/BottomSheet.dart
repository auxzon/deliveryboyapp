import 'package:deliveryapp/Utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../../controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import '../ScafoldWithsafearea.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BottomNavigationBarController(index: index));
    print("index in btm sheet ${index}");
    return PopScope(
      canPop: false, onPopInvoked: (didPop) {
      SystemNavigator.pop();
    },
      child: BaseScreen(
        child:PersistentTabView(
          context,
          controller: controller.navcontroller,
          screens: controller.screens,
          items: controller.navItems,
          confineToSafeArea: true,
          backgroundColor: Colors.white,
          // isVisible: controller.hidebtmsheet.value,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          navBarHeight: kBottomNavigationBarHeight,
          navBarStyle: NavBarStyle.style1,
        ),
      ),
    );
  }
}
