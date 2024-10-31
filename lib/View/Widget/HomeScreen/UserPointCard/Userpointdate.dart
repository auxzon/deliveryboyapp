import 'package:deliveryapp/Controller/HomecreenController/UserpointController/UserpointContoller.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/MaterialButton/CustomMaterialButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';

class Userpointdate extends StatelessWidget {
  Userpointdate({super.key, required this.point});

  String? point;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserpointController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextwithFont(
                    text: "Points Collected",
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w100),
                Obx(
                  () => TextwithFont(
                      text: controller.hidepoint.value ? point : "*****",
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                      fontweight: FontWeight.bold),
                )
              ],
            ),
            Spacer(),
            Obx(
              () => controller.hidepoint.value
                  ? Custommaterialbutton(
                      text: "hide points",
                      ontap: () {
                        controller.toggleview();
                      },
                    )
                  : Custommaterialbutton(
                      text: "view points",
                      ontap: () {
                        controller.toggleview();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
