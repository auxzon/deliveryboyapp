import 'package:deliveryapp/Utils/AppBar/CommonAppBar.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/OrderHistoryController/Orderhistorycontroller.dart';
import '../Widget/OrderNotification/OrderNotificationCard.dart';

class OrderNotification extends StatelessWidget {
  const OrderNotification({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OrderhistoryController());
    return BaseScreen(
      child: Column(
        children: [
          CommonAppBar(
            title: "Notification",
            onTapRight: () {},
            RightWidget:
                TextwithFont(text: "clear all", fontweight: FontWeight.w700),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              shrinkWrap: true,
              itemCount: controller.Orders.length,
              itemBuilder: (context, index) {
                return NotificationCard(
                  message: "You have an order assigned to you",
                  time: "21:30",
                  date: "03-11-2021",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
