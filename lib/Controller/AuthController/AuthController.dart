import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../Utils/BottomSheet/BottomSheet.dart';

class AuthController extends GetxController {
  AuthController({required this.context});
  var isLoading = false.obs;

  final BuildContext context;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final GetStorage _storage = GetStorage();

  var showpasslg = false.obs;
  var showpassrg = false.obs;

  logtogglepass() {
    showpasslg.value = !showpasslg.value;
  }

  void login() {
    if (_validateLogin()) {
      isLoading.value = true;
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
        _storage.write('isLoggedIn', true);

        Get.snackbar('Success', 'Login Successful',
            colorText: Theme.of(context).colorScheme.surface);
        Get.to(() => BottomNavigator(index:1), transition: Transition.leftToRight);
      });
    }
  }

  void logout() {
    _storage.write('isLoggedIn', false);
  }


  bool _validateLogin() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'All fields are required',
          colorText: Theme.of(context).colorScheme.surface);
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
