import 'package:deliveryapp/Controller/HomecreenController/QrCodeCOntroller/qrcontroller.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrcodewidget extends StatelessWidget {
  const Qrcodewidget({super.key, required this.orderId});

  final String orderId;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(QrColoroller());
    return BaseScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImageView(
              data: orderId,
              version: QrVersions.auto,
              size: MyApp.height * .5,
            ),
            TextwithFont(
                text: "Order Id : ${orderId}",
                size: 25,
                color: Theme.of(context).colorScheme.surface,
                fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
