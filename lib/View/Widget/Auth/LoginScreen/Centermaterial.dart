import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/AuthController/AuthController.dart';
import '../../../../Utils/TexywithFont/TextwithFont.dart';
import '../../../../main.dart';

class Centermaterial extends StatelessWidget {
  const Centermaterial(
      {super.key,
      required this.materialheight,
      required this.materialwidth,
      required this.authController,
      required this.materialelevation});

  final AuthController authController;
  final double? materialelevation;
  final double? materialheight;
  final double? materialwidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: materialelevation??0,
      borderRadius: BorderRadius.circular(35),
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Container(
          height: materialheight,
          width: materialwidth,
          color: Theme.of(context).colorScheme.inversePrimary.withOpacity(.2),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Welcome Text
                    TextwithFont(
                      text: "Welcome back to",
                      size: 28,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontweight: FontWeight.bold,
                    ),
                    TextwithFont(
                      text: "Food App",
                      size: 40,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(height: MyApp.height * .07),
                    TextField(
                      controller: authController.emailController,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.surface
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.surface.withOpacity(.7)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Theme.of(context).colorScheme.secondary),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Theme.of(context).colorScheme.surface.withOpacity(.7),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(height: MyApp.height * .02),
                    Obx(
                      () => TextField(
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface
                        ),
                        controller: authController.passwordController,
                        obscureText: !authController.showpasslg.value,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            color: Theme.of(context).colorScheme.surface.withOpacity(.7),
                            onPressed: () {
                              authController.logtogglepass();
                            },
                            icon: Icon(authController.showpasslg.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Theme.of(context).colorScheme.surface.withOpacity(.7)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Theme.of(context).colorScheme.secondary),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(context).colorScheme.surface.withOpacity(.7),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MyApp.height * .02),

                    // Submit Button
                    Obx(
                      () => authController.isLoading.value
                          ? CircularProgressIndicator()
                          : MaterialButton(
                              elevation: 8,
                              minWidth: MediaQuery.of(context).size.width * 0.8,
                              height: 50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Theme.of(context).colorScheme.surface.withOpacity(.8),
                              onPressed: authController.login,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ),
                    SizedBox(height: MyApp.height * .04),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
