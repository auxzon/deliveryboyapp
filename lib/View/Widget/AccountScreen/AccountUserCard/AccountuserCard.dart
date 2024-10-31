import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/material.dart';
import '../../../../main.dart';

class Accountusercard extends StatelessWidget {
  const Accountusercard({super.key, required this.username});

  final String username;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        animationDuration: Duration(seconds: 2),
        shadowColor: Theme.of(context).colorScheme.secondary,
        elevation: 15,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: MyApp.height * .08,
          width: MyApp.width * .8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: TextwithFont(
                text: username,
                size: 25.0,
                color: Theme.of(context).colorScheme.onPrimary,
                fontweight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
