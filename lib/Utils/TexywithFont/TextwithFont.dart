import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../utils/TextFont.dart';

class TextwithFont extends StatelessWidget {
  TextwithFont(
      {super.key,
        required this.text,
        this.size,
        this.color,
        required this.fontweight,
        this.textDecoration,
        this.doccolors,
        this.overfloww,
        this.align,
        this.maxln});

  var text;
  double? size;
  Color? color;
  FontWeight fontweight;
  TextDecoration? textDecoration;
  Color? doccolors;
  TextOverflow? overfloww;
  int? maxln;
  TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxln,
      textAlign: align,
      style: Font1.bodyLarge?.copyWith(
        decoration: textDecoration,
        decorationColor: doccolors,
        fontSize: size,
        fontWeight: fontweight,
        color: color??Theme.of(context).colorScheme.primary,
        overflow: overfloww,
      ),
    );
  }
}
