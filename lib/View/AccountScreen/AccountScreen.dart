import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/AuthController/AuthController.dart';
import '../../Controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import '../../Controller/SplashScreenController/SplashScreenController.dart';
import '../../Utils/TexywithFont/TextwithFont.dart';
import '../../Utils/color.dart';
import '../../main.dart';
import '../Myaccount/MyAccount.dart';
import '../SplashScreen/SplashScreen.dart';
import '../Widget/AccountScreen/AccountTileCard/AccountTilecard.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var authcontroller = Get.put(AuthController(context: context));
    return ListView(
      padding: EdgeInsets.symmetric(vertical:10,horizontal: 20 ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 0,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).colorScheme.primary.withOpacity(.8),
          ),
          height: MyApp.height * .1,
          width: MyApp.width,
          child: Center(
            child: TextwithFont(
                text: "HI ,  User",
                size: 25,
                color: liteColor,
                fontweight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Accounttilecard(
                icon: Icon(Icons.person,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.8),),
                name: "My Account",
                onTap: () {
                  Get.to(()=>Myaccount());
                }),
            Accounttilecard(
                icon: Icon(Icons.logout,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.8),), name: "LogOut",
                onTap: () {
                  Get.delete<SplashScreenController>();
                  authcontroller.logout();
                  Get.delete<AuthController>();
                  Get.delete<BottomNavigationBarController>();
                  Get.offAll(()=>SplashScrren());
                }),
          ],
        )
      ],
    );
  }
}
