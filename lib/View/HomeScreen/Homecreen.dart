import 'package:deliveryapp/Controller/HomecreenController/HomecreenController.dart';
import 'package:deliveryapp/Utils/Searchbar/SearchBar/view/SearchBarWidget.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/CurrentOrderCard/CurrentOrderCard.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/MaterialButton/CustomMaterialButton.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/UserCard/usercard.dart';
import 'package:deliveryapp/View/Widget/HomeScreen/UserPointCard/Userpointdate.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/HomeScreen/ListedOrderCard/Listedordercard.dart';

class Homecreen extends StatelessWidget {
  const Homecreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomecreenController());
    return Stack(
      children: [
        Container(
          height: MyApp.height,
          width: MyApp.width,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withAlpha(50)),
        ),
        SizedBox(
          height: MyApp.height * .3,
          width: MyApp.width,
          child: Column(
            children: [
              Usercard(
                leftwidget: CircleAvatar(
                  maxRadius: 30,
                  child: Image.asset("images/contacts.png"),
                ),
                rightwidget: IconButton(
                    onPressed: () {},
                    icon: Badge.count(
                      count: 5,
                      child: Icon(Icons.notifications),
                    )),
                centerbottom: "Kochi, Kerala",
                centertop: "Delivery boy",
              ),
              Userpointdate(point: "1000.5"),
              Custommaterialbutton(
                text: "Report",
                ontap: () {},
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              height: MyApp.height * .7,
              width: MyApp.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchBarAnimated(
                      texts: "order name / order id",
                    ),
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controller.showlisted.value
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Custommaterialbutton(
                                  text: "Current Tracking",
                                  ontap: () {},
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.togglelistedview();
                                  },
                                  child: TextwithFont(
                                      text: "Current Tracking",
                                      size: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontweight: FontWeight.bold),
                                ),
                              ),
                        controller.showlisted.value
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.togglelistedview();
                                  },
                                  child: TextwithFont(
                                      text: "Listed Tracking",
                                      size: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontweight: FontWeight.bold),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Custommaterialbutton(
                                  text: "Listed Tracking",
                                  ontap: () {},
                                ),
                              ),
                      ],
                    ),
                  ),
                  Obx(
                    () => controller.showlisted.value
                        ? Expanded(
                            child: ListView.builder(
                              itemCount: controller.Orders.length,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Currentordercard(
                                index: index,
                                ordername: controller.Orders[index],
                                orderhotel: controller.OrderHotel[index],
                                orderaddress: controller.OrdersAddress[index],
                                orderpriority: controller.Orderpriority[index],
                                orderpayment:
                                    controller.OrdersPaymenttype[index],
                                orderid: controller.Ordersid[index].toString(),
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: controller.Orders.length,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Listedordercard(
                                index: index,
                                ordername: controller.Orders[index],
                                orderhotel: controller.OrderHotel[index],
                                orderaddress: controller.OrdersAddress[index],
                                orderpriority: controller.Orderpriority[index],
                                orderpayment:
                                    controller.OrdersPaymenttype[index],
                                orderid: controller.Ordersid[index].toString(),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
