import 'package:deliveryapp/Controller/OrderHistoryController/Orderhistorycontroller.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/color.dart';

class Orderhistorycard extends StatelessWidget {
  const Orderhistorycard({
    super.key,
    required this.index,
    required this.ordername,
    required this.orderid,
    required this.orderhotel,
    required this.orderpoint,
    required this.orderaddress,
    required this.orderstatus,
    required this.odertype,
  });

  final int index;
  final String ordername;
  final String orderid;
  final String orderhotel;
  final String orderpoint;
  final String orderaddress;
  final String orderstatus;
  final int odertype;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final secondaryColor = isDarkMode
        ? Colors.grey[850]
        : Theme.of(context).colorScheme.secondary.withAlpha((index + 1) * 20);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).colorScheme.inversePrimary,
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withAlpha(50),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    TextwithFont(
                      text: ordername,
                      size: 20,
                      color: primaryColor,
                      fontweight: FontWeight.w600,
                    ),
                    TextwithFont(
                      text: "id : $orderid",
                      size: 15,
                      color: primaryColor.withOpacity(0.8),
                      fontweight: FontWeight.w100,
                    ),
                    TextwithFont(
                      text: orderhotel,
                      size: 15,
                      color: primaryColor.withOpacity(0.8),
                      fontweight: FontWeight.w200,
                    ),
                    TextwithFont(
                      textDecoration: orderstatus == "success"
                          ? TextDecoration.none
                          : TextDecoration.lineThrough,
                      colors: Theme.of(context).colorScheme.error,
                      text: "point : $orderpoint",
                      size: 15,
                      color: primaryColor,
                      fontweight: FontWeight.w200,
                    ),
                    TextwithFont(
                      text: orderaddress,
                      size: 15,
                      overfloww: TextOverflow.ellipsis,
                      maxln: 1,
                      color: primaryColor,
                      fontweight: FontWeight.w200,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                  ],
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    child: Icon(
                      Icons.fastfood_outlined,
                      color: orderstatus == "success"
                          ? primaryColor
                          : nonvegfoodcolor,
                    ),
                  ),
                  TextwithFont(
                    text: orderstatus,
                    size: 10,
                    color: Theme.of(context).colorScheme.onSurface,
                    fontweight: FontWeight.bold,
                  ),
                  Icon(
                    CupertinoIcons.dot_square,
                    color: odertype == 1 ? vegfoodcolor : nonvegfoodcolor,
                  )
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .05),
            ],
          ),
        ),
      ),
    );
  }
}
