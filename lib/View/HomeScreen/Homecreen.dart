import 'package:deliveryapp/Controller/HomecreenController/HomecreenController.dart';
import 'package:deliveryapp/Utils/AppBar/CommonAppBar.dart';
import 'package:deliveryapp/Utils/MaterialButton/CustomMaterialButton.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/Searchbar/SearchBar/view/SearchBarWidget.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/Utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homecreen extends StatelessWidget {
  const Homecreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomecreenController());
    return BaseScreen(
      child: Column(
        children: [
          CommonAppBar(
            title: "hi, delivery boy",
            titlecolor: Theme.of(context).colorScheme.primary,
            RightWidget: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTapRight: () {},
          ),
          TextwithFont(
            text: "your current location",
            fontweight: FontWeight.normal,
            color: Theme.of(context).colorScheme.primary,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Obx(() {
              return TextButton(
                onPressed: () {
                  controller.fetchCurrentLocation();
                },
                child: Text(
                  controller.currentLocation.isNotEmpty
                      ? controller.currentLocation.value
                      : "Fetching location...",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarAnimated(
              bordercolor: Theme.of(context).colorScheme.primary,
              texts: "order name / order id",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custommaterialbutton(
                    text: "New",
                    ontap: () {
                      controller.changeTab(0);
                    },
                    buttoncolor: controller.currentTabIndex.value == 0
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                    textcolor: controller.currentTabIndex.value != 0
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                  ),
                  Custommaterialbutton(
                    text: "Active",
                    ontap: () {
                      controller.changeTab(1);
                    },
                    buttoncolor: controller.currentTabIndex.value == 1
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                    textcolor: controller.currentTabIndex.value != 1
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                  ),
                  Custommaterialbutton(
                    text: "History",
                    ontap: () {
                      controller.changeTab(2);
                    },
                    buttoncolor: controller.currentTabIndex.value == 2
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                    textcolor: controller.currentTabIndex.value != 2
                        ? Theme.of(context).colorScheme.primary
                        : liteColor,
                  ),
                ],
                mainAxisSize: MainAxisSize.max,
              );
            }),
          ),
          Obx(
            () => Expanded(
                child: controller.currentTabIndex.value == 0
                    ? ListView.builder(
                  shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) => Card(
                          child: TextwithFont(
                              text: "${index + 1} new",
                              fontweight: FontWeight.bold),
                        ),
                      )
                    : controller.currentTabIndex.value == 1
                        ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Card(
                    child: TextwithFont(
                        text: "${index + 1} active",
                        fontweight: FontWeight.bold),
                  ),
                )
                        : controller.currentTabIndex.value == 2
                            ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Card(
                    child: TextwithFont(
                        text: "${index + 1} history",
                        fontweight: FontWeight.bold),
                  ),
                )
                            : SizedBox.shrink()),
          ),
        ],
      ),
    );
  }
}
