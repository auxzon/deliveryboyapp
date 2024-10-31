import 'package:flutter/material.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';

class Custommaterialbutton extends StatelessWidget {
  const Custommaterialbutton({super.key, required this.text, this.ontap, this.buttoncolor});

  final String text;
  final VoidCallback? ontap;
  final Color? buttoncolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      child: TextwithFont(
        text: text,
        size: 10,
        color: buttoncolor??Theme.of(context).colorScheme.inversePrimary,
        fontweight: FontWeight.w800,
      ),
      elevation: 10,
      color: Theme.of(context).colorScheme.primary.withAlpha(75),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
