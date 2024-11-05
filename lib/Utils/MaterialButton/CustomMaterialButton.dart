import 'package:deliveryapp/Utils/color.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';

class Custommaterialbutton extends StatelessWidget {
  const Custommaterialbutton({
    super.key,
    required this.text,
    this.ontap,
    this.buttoncolor,
    this.textcolor,
  });

  final String text;
  final VoidCallback? ontap;
  final Color? buttoncolor;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      child: TextwithFont(
        text: text,
        size: 10,
        color: textcolor ?? Theme.of(context).colorScheme.primary,
        fontweight: FontWeight.w800,
      ),
      elevation: 10,
      color: buttoncolor ?? Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
