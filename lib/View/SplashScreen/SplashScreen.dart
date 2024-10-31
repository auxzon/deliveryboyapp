import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/SplashScreenController/SplashScreenController.dart';
import '../../main.dart';

class SplashScrren extends StatelessWidget {
  const SplashScrren({super.key});
  @override
  Widget build(BuildContext context) {
    var Controller = Get.put(SplashScreenController());
    return Scaffold(
      body: Center(
        child: Container(
          height: MyApp.height,
          width: MyApp.width,
          child: Image.asset("images/appicon.png"),
        ),
      ),
    );
  }
}
