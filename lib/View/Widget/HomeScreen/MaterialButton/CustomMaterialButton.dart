import 'package:flutter/material.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';

class Custommaterialbutton extends StatelessWidget {
  const Custommaterialbutton({super.key, required this.text, this.ontap});

  final String text;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      child: TextwithFont(
        text: text,
        size: 10,
        color: Theme.of(context).colorScheme.inversePrimary,
        fontweight: FontWeight.w800,
      ),
      elevation: 10,
      color: Theme.of(context).colorScheme.primary.withAlpha(75),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
