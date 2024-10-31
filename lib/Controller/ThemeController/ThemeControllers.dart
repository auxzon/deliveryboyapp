import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../utils/color.dart';

class ThemeControllers extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = _loadThemeFromStorage();
  }


  bool _loadThemeFromStorage() => _box.read(_key) ?? false;


  _saveThemeToStorage(bool isDarkMode) => _box.write(_key, isDarkMode);


  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? darkTheme : lightTheme);
    _saveThemeToStorage(isDarkMode.value);
    print("isDarkMode.value : ${isDarkMode.value}");
  }

}
