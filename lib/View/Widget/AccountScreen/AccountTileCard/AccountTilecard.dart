import 'package:flutter/material.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';
import '../../../../main.dart';
import '../../../../utils/color.dart';

class Accounttilecard extends StatelessWidget {
  Accounttilecard(
      {super.key, required this.icon, required this.name, required this.onTap});

  final String name;
  final VoidCallback onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MyApp.height * .1,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: darklitecolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon,
                TextwithFont(
                    text: "${name}",
                    size: 20,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.8),
                    fontweight: FontWeight.bold),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
