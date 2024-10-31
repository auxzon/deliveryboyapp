import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/AuthController/AuthController.dart';
import '../../Utils/ScafoldWithsafearea.dart';
import '../../main.dart';
import '../../utils/color.dart';
import '../Widget/Auth/LoginScreen/Centermaterial.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var authController = Get.put(AuthController(context: context));

    return BaseScreen(
      child: Container(
        height: MyApp.height,
        width: MyApp.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/loginbg.jpg"),
          ),
        ),
        child: Center(
          child: Centermaterial(
            authController: authController,
            materialelevation: 20,
            materialheight: MyApp.height * .6,
            materialwidth: MyApp.width * .9,
          ),
        ),
      ),
    );
  }
}
