import 'package:deliveryapp/Controller/BootomSheetController/Controller/BottomNavgationBarController.dart';
import 'package:deliveryapp/Controller/OrderHistoryController/Orderhistorycontroller.dart';
import 'package:deliveryapp/Utils/BottomSheet/BottomSheet.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/View/Widget/OrderHistory/OrderhistoryCard/OrderHistoryCard.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/color.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OrderhistoryController());
    return Column(
      children: [
        SizedBox(
          height: MyApp.height * .02,
        ),
        Center(
          child: TextwithFont(
              text: "Order History",
              size: 20,
              color: Theme.of(context).colorScheme.primary,
              fontweight: FontWeight.bold),
        ),
        SizedBox(
          height: MyApp.height * .02,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: controller.Orders.length,
                itemBuilder: (context, index) => Orderhistorycard(
                    index: index,
                    ordername: controller.Orders[index],
                    orderid: controller.Ordersid[index].toString(),
                    orderhotel: controller.OrderHotel[index],
                    orderpoint: controller.Orderpoints[index],
                    orderaddress: controller.OrdersAddress[index],
                    orderstatus: controller.Orderstatus[index],
                    odertype: controller.OrdersPaymenttype[index])))
      ],
    );
  }
}
