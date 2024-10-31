import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Controller/ThemeController/ThemeControllers.dart';
import 'Utils/color.dart';
import 'View/SplashScreen/SplashScreen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static double height = 0;
  static double width = 0;
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeControllers());

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return  Obx(
          () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode:
        themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        home: SplashScrren(),
      ),
    );;
  }
}


