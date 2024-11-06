import 'package:deliveryapp/Controller/HomecreenController/HomecreenController.dart';
import 'package:deliveryapp/Utils/AppBar/CommonAppBar.dart';
import 'package:deliveryapp/Utils/MaterialButton/CustomMaterialButton.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/Searchbar/SearchBar/view/SearchBarWidget.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/Utils/color.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/ActiveCard/ActiveCard.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/HistoryCard/HistoryCard.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/NewsCard/NewsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';

class Homecreen extends StatelessWidget {
  const Homecreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomecreenController());
    return BaseScreen(
      child: Column(
        children: [
        Container(
          width: MyApp.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
          ),
          child: Column(children: [
            CommonAppBar(
              title: "hi, delivery boy",
              titlecolor: liteColor,
              RightWidget: Icon(
                Icons.notifications,
                color: liteColor,
              ),
              onTapRight: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  TextwithFont(
                    text: "your current location",
                    fontweight: FontWeight.normal,
                    color: liteColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Obx(() {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.fetchCurrentLocation();
                        },
                        child: TextwithFont(
                          text:controller.currentLocation.isNotEmpty
                              ?controller.currentLocation.value
                              : "Fetching location...",
                          overfloww: TextOverflow.ellipsis,
                          fontweight: FontWeight.bold,
                          color: liteColor,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: SearchBarAnimated(
                bordercolor: liteColor,
                texts: "order name / order id",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Obx(() {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: liteColor
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custommaterialbutton(
                        text: "New",
                        ontap: () {
                          controller.changeTab(0);
                        },
                        buttoncolor: controller.currentTabIndex.value == 0
                            ? Theme.of(context).colorScheme.secondary
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
                  ),
                );
              }),
            ),
          ],),
        ),
          Obx(
            () => Expanded(
                child: controller.currentTabIndex.value == 0
                    ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) =>Newscard(index: index),
                )
                    : controller.currentTabIndex.value == 1
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) => Activecard(index: index),
                          )
                        : controller.currentTabIndex.value == 2
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) => Historycard(index: index),
                              )
                            : SizedBox.shrink()),
          ),
        ],
      ),
    );
  }
}
