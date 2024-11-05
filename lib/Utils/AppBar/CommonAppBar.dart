import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../../../../Utils/TexywithFont/TextwithFont.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.title,
    this.titlecolor,
    this.RightWidget,
    this.onTapLeft,
    this.onTapRight,
  });

  final String title;
  final Color? titlecolor;
  final Callback? onTapLeft;
  final Callback? onTapRight;
  final Widget? RightWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        onTapLeft==null?Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox.shrink(),
        ):IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: Theme.of(context).colorScheme.primary),
          onPressed: onTapLeft,
        ),
        onTapLeft==null?SizedBox.shrink():Spacer(),
        TextwithFont(
            text: title,
            size: 25,
            color: titlecolor??Theme.of(context).colorScheme.primary,
            fontweight: FontWeight.bold),
        Spacer(),
        IconButton(
          icon: Material(
            child: RightWidget,
            color: Colors.transparent,
          ),
          onPressed: onTapRight,
        ),
      ],
    );
  }
}
