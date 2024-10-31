import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/AccountController/AccountController.dart';
import '../../Controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import '../../Controller/ThemeController/ThemeControllers.dart';
import '../../Utils/BottomSheet/BottomSheet.dart';
import '../../Utils/ScafoldWithsafearea.dart';
import '../../Utils/TexywithFont/TextwithFont.dart';
import '../Widget/AccountScreen/BottomSheet/BottomSheet.dart';
import '../Widget/MyAccount/Appbar/MyAccounntAppBar.dart';

class Myaccount extends StatelessWidget {
  const Myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeControllers());
    var controller = Get.put(AddressController());

    return BaseScreen(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Myaccounntappbar(
            title: "My Profile",
            onTap: () {
              Get.delete<BottomNavigationBarController>();
              Get.delete<ThemeControllers>();
              Get.to(
                      () => BottomNavigator(
                    index: 2,
                  ),
                  transition: Transition.leftToRight);
            },
          ),
          Container(
            width: MyApp.width * .12,
            height: MyApp.height * .12,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person),
          ),
          Center(
            child: TextwithFont(
              textDecoration: TextDecoration.underline,
              colors: Theme.of(context).colorScheme.primary,
              text: "Username",
              size: 25,
              color: Theme.of(context).colorScheme.primary,
              fontweight: FontWeight.bold,
            ),
          ),
          Center(
            child: TextwithFont(
              text: "username@gmail.com",
              size: 15,
              color: Theme.of(context).colorScheme.surface,
              fontweight: FontWeight.bold,
            ),
          ),
          TextwithFont(
            text: "Details",
            size: 15,
            color: Theme.of(context).colorScheme.primary,
            fontweight: FontWeight.bold,
          ),
          Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: Theme.of(context).colorScheme.inversePrimary.withOpacity(.5),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.production_quantity_limits,
                      color: Theme.of(context).iconTheme.color, // Icon color based on theme
                    ),
                    title: TextwithFont(
                      text: "Numbers of Orders",
                      size: 15,
                      color: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black, // Fallback to black if null
                      fontweight: FontWeight.w600,
                    ),
                    subtitle: TextwithFont(
                      text: "20",
                      size: 15,
                      color: Theme.of(context).textTheme.bodyMedium!.color?? Colors.black, // Adjust text color
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.control_point_duplicate,
                      color: Theme.of(context).iconTheme.color, // Icon color based on theme
                    ),
                    title: TextwithFont(
                      text: "Points",
                      size: 15,
                      color: Theme.of(context).textTheme.bodyLarge!.color?? Colors.red, // Adjust text color
                      fontweight: FontWeight.w600,
                    ),
                    subtitle: TextwithFont(
                      text: "205",
                      size: 15,
                      color: Theme.of(context).textTheme.bodyMedium?.color?? Colors.black, // Adjust text color
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Address",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Show AlertDialog for editing address
                  showDialog(
                    context: context,
                    builder: (context) {
                      return EditAddressDialog(); // Show the EditAddressDialog
                    },
                  );
                },
                icon: Icon(Icons.edit_note, color: Theme.of(context).iconTheme.color),
              ),
            ],
          ),

          // Card showing the address
          Obx(() => Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: Theme.of(context).cardColor,
            child: Center(
              child: ListTile(
                leading: Icon(
                  Icons.broadcast_on_personal_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),

                subtitle: Text(
                  "${controller.address.value}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          )),
          TextwithFont(
            text: "Theme",
            size: 15,
            color: Theme.of(context).colorScheme.primary,
            fontweight: FontWeight.bold,
          ),
          Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextwithFont(
                    text: "Dark Mode",
                    size: 15,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontweight: FontWeight.bold,
                  ),
                  Obx(() => Switch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) {
                      themeController.toggleTheme();
                    },
                    activeColor: Theme.of(context).colorScheme.onPrimary,
                    inactiveThumbColor: Theme.of(context).colorScheme.surface,
                    inactiveTrackColor: Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(600),
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}