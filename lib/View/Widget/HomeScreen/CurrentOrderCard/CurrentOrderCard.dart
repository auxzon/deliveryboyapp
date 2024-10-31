import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
  final int orderpriority; // Now an integer
  final int orderpayment; // Now an integer
  final String orderid;
  void _showQRCode(BuildContext context, String orderId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: TextwithFont(
            text: "QR Code for Order $orderId",
            size: 18,
            color: Theme.of(context).colorScheme.primary,
            fontweight: FontWeight.bold,
          ),
          content: QrImageView(
            data: orderId, // Using orderId as data for the QR code
            version: QrVersions.auto,
            size: 200.0,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MyApp.height * .2,
        child: Stack(
          children: [
            Container(
              height: MyApp.height * .2,
              width: MyApp.width,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withAlpha((index + 1) * 30),
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
                        _showQRCode(context, orderid);
                      },
                      label: TextwithFont(
                        text: "Show QR",
                        size: 10,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontweight: FontWeight.bold,
                      ),
                      icon: Icon(Icons.qr_code_2),
                    ),
                  )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            Positioned(
              bottom: -MyApp.height * .06,
              right: 0,
              child: Container(
                width: MyApp.width * .25,
                height: MyApp.height * .25,
                decoration: BoxDecoration(
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
