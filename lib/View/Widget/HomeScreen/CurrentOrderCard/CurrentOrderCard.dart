import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:deliveryapp/Controller/HomecreenController/HomecreenController.dart';

import '../../../../main.dart';
import '../QR_Code/QR_Code.dart';

class Currentordercard extends StatelessWidget {
  const Currentordercard({
    super.key,
    required this.index,
    required this.ordername,
    required this.orderhotel,
    required this.orderaddress,
    required this.orderpriority,
    required this.orderpayment,
    required this.orderid,
  });

  final int index;
  final String ordername;
  final String orderhotel;
  final String orderaddress;
  final int orderpriority;
  final int orderpayment;
  final String orderid;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomecreenController>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MyApp.height * .2,
        child: Stack(
          children: [
            Container(
              height: MyApp.height * .2,
              width: MyApp.width,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.primary.withAlpha(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextwithFont(
                        text: ordername,
                        size: 15,
                        color: Theme.of(context).colorScheme.primary,
                        fontweight: FontWeight.bold,
                      ),
                      TextwithFont(
                        text: "id: $orderid",
                        size: 15,
                        color: Theme.of(context).colorScheme.primary,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                  TextwithFont(
                    text: orderaddress,
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w400,
                  ),
                  TextwithFont(
                    text: orderhotel,
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w400,
                  ),
                  TextwithFont(
                    text: "Priority: ${orderpriority == 1 ? "high" : "low"}",
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w400,
                  ),
                  TextwithFont(
                    text: "Payment: ${orderpayment == 1 ? "cod" : "paid"}",
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w400,
                  ),
                  orderpayment == 1
                      ? Flexible(
                    child: FilledButton.icon(
                      onPressed: () {
                        Get.to(()=>Qrcodewidget(orderId: "2316"));
                      },
                      label: TextwithFont(
                        text: "Show QR",
                        size: 10,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontweight: FontWeight.bold,
                      ),
                      icon: const Icon(Icons.qr_code_2),
                    ),
                  )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            Positioned(
              bottom: -MyApp.height * .06,
              right: 0,
              child: Container(
                width: MyApp.width * .25,
                height: MyApp.height * .25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/box.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
