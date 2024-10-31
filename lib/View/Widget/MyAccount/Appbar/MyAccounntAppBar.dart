import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';
import '../../../../Utils/color.dart';

class Myaccounntappbar extends StatelessWidget {
  const Myaccounntappbar({super.key, required this.title,required this.onTap});

  final String title;
  final Callback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).colorScheme.primary,
      ),
      height: MyApp.height * .1,
      width: MyApp.width,
      child: Center(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: liteColor),
              onPressed: onTap,
            ),
            TextwithFont(
                text: title,
                size: 25,
                color: liteColor,
                fontweight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
