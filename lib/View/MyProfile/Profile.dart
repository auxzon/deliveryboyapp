import 'package:deliveryapp/Controller/SplashScreenController/SplashScreenController.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/color.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/AccountController/AccountController.dart';
import '../../Controller/AuthController/AuthController.dart';
import '../../Controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import '../../Controller/ThemeController/ThemeControllers.dart';
import '../../Utils/AppBar/CommonAppBar.dart';
import '../../Utils/TexywithFont/TextwithFont.dart';
import '../SplashScreen/SplashScreen.dart';
import '../Widget/MyAccount/BottomSHeet/BottomSheet.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeControllers());
    var controller = Get.put(AddressController());
    var authcontroller = Get.put(AuthController(context: context));
    void _showEditProfileBottomSheet(BuildContext context) {
      Get.bottomSheet(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        EditProfileBottomSheet(addressController: controller),
        isScrollControlled: true,
      );
    }
    return BaseScreen(
      child: Stack(
        children: [
          Column(
            children: [
              CommonAppBar(
                title: "My Profile",
                onTapRight: () {
                  Get.delete<SplashScreenController>();
                  authcontroller.logout();
                  Get.delete<AuthController>();
                  Get.delete<BottomNavigationBarController>();
                  Get.offAll(() => SplashScrren());
                },
                RightWidget: Icon(
                  Icons.logout,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: MyApp.height*.04,),
              CircleAvatar(
                maxRadius: 50,
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                backgroundImage: AssetImage("images/hotel1.jpg"),
              ),
              Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: TextwithFont(
                      textDecoration: TextDecoration.underline,
                      text: controller.name.value,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextwithFont(
                          text: controller.email.value,
                          size: 10,
                          color: Theme.of(context).colorScheme.primary,
                          fontweight: FontWeight.bold,
                        ),
                        IconButton(onPressed: () {
                          _showEditProfileBottomSheet(context);
                        }, icon: Icon(Icons.edit_note,color: Theme.of(context).colorScheme.primary,))
                      ],
                    ),
                  ),
                ],
              ),),
            ],
          ),
          Positioned(
            bottom: 0,
            top: MyApp.height*.3,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: SemicircleClipper(),
              child: Container(
                height: MyApp.height * .5,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          Positioned(
            top: MyApp.height*.1,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Material(
                color: Theme.of(context).colorScheme.inversePrimary.withOpacity(.8),
                elevation: 25,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: MyApp.height * .25,
                  width: MyApp.width * .8,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary.withOpacity(.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextwithFont(
                                text: "Select Your Theme",
                                size: 20,
                                color: Theme.of(context).colorScheme.primary,
                                fontweight: FontWeight.bold,
                              ),
                              Obx(
                                    () => Switch(
                                  autofocus: true,
                                  activeTrackColor:
                                  Theme.of(context).colorScheme.primary,
                                  activeColor:
                                  Theme.of(context).colorScheme.onPrimary,
                                  inactiveThumbColor:
                                  Theme.of(context).colorScheme.primary,
                                  inactiveTrackColor: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  value: themeController.isDarkMode.value,
                                  onChanged: (value) {
                                    themeController.toggleTheme();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextwithFont(
                            text: "Details of Orders",
                            textDecoration: TextDecoration.underline,
                            doccolors: Theme.of(context).colorScheme.primary,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                            fontweight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      // Get.to(()=>Ordersscreen());
                                    },
                                    child: TextwithFont(
                                        text: "20", fontweight: FontWeight.w100),
                                  ),
                                  GestureDetector(
                                    onTap:(){
                                      // Get.to(()=>Ordersscreen());
                                    },
                                    child: TextwithFont(
                                      size: 15,
                                      text: "no of Orders",
                                      fontweight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextwithFont(
                                      text: "20", fontweight: FontWeight.w100),
                                  TextwithFont(
                                    size: 15,
                                    text: "points",
                                    fontweight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: MyApp.height*.05,
              child: SizedBox(
                height: MyApp.height * .4,
                width: MyApp.width,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MyApp.height * .25,
                    width: MyApp.width * .8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextwithFont(
                          color: liteColor,
                            text: "© 2024 Food App. All rights reserved.",
                            fontweight: FontWeight.bold),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextwithFont(
                            color: liteColor,
                              size: 10,
                              align: TextAlign.center,
                              text:
                              "This application and its contents are protected under applicable copyright and intellectual property laws. Unauthorized use or reproduction is prohibited.",
                              fontweight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
class SemicircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * -0.003, size.height * 0.23);
    path.quadraticBezierTo(
      size.width * 0.1, size.height * 0.22,
      size.width * 0.2, size.height * 0.21,
    );
    path.cubicTo(
      size.width * 0.38, size.height * 0.20,
      size.width * 0.42, size.height * 0.38,
      size.width * 0.48, size.height * 0.44,
    );
    path.cubicTo(
      size.width * 0.55, size.height * 0.50,
      size.width * 0.58, size.height * 0.51,
      size.width * 0.65, size.height * 0.50,
    );
    path.quadraticBezierTo(
      size.width * 0.78, size.height * 0.48,
      size.width * 1.0, size.height * 0.37,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


