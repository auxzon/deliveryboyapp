import 'package:flutter/widgets.dart';

import '../../../../utils/TextFont.dart';
import '../../../../utils/color.dart';

class TextwithFont extends StatelessWidget {
  TextwithFont(
      {super.key,
        required this.text,
        required this.size,
        required this.color,
        required this.fontweight,
        this.textDecoration,
        this.colors,
        this.overfloww,
        this.maxln});

  var text;
  double size;
  Color color;
  FontWeight fontweight;
  TextDecoration? textDecoration;
  Color? colors;
  TextOverflow? overfloww;
  int? maxln;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxln,
      style: Font1.bodyLarge?.copyWith(
        decoration: textDecoration,
        decorationColor: colors,
        fontSize: size,
        fontWeight: fontweight,
        color: color,
        overflow: overfloww,
      ),
    );
  }
}
