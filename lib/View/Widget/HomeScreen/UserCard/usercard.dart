import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/material.dart';

class Usercard extends StatelessWidget {
   Usercard({super.key,this.leftwidget,required this.centertop, required this.centerbottom,required this.rightwidget});

  Widget ?leftwidget;
  String centertop;
  String centerbottom;
  Widget rightwidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftwidget??SizedBox.shrink(),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                TextwithFont(
                    text: centertop,
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.bold),
                TextwithFont(
                    text: centerbottom,
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontweight: FontWeight.w400)
              ],
            ),
            Spacer(),
            rightwidget
          ],
        ),
      ),
    );
  }
}
