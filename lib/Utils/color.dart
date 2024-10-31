// import 'package:flutter/material.dart';
//
// var kColorScheme =
//     ColorScheme.fromSeed(seedColor: Color.fromRGBO(0, 42, 255, 1.0));
// var kColorSchemelite =
//     ColorScheme.fromSeed(seedColor: Color.fromRGBO(167, 182, 255, 1.0));
// var kColorSchemedark =
//     ColorScheme.fromSeed(seedColor: Color.fromRGBO(0, 14, 89, 1.0));
//
// var liteColor = Color.fromRGBO(255, 255, 255, 1.0);
//
// var ratingcolor = Color.fromRGBO(255, 254, 0, 1.0);
//
// var vegfoodcolor = Color.fromRGBO(24, 203, 0, 1.0);
// var nonvegfoodcolor = Color.fromRGBO(168, 0, 0, 1.0);
//
//
// var bottombarselectedcolor = Color.fromRGBO(25, 50, 62, 1.0);
// var bottombarnotselectedcolor = Color.fromRGBO(133, 162, 193, 1.0);
//
//
// var darklitecolor = Color.fromRGBO(210, 211, 211, 1.0);
//
// var liteColors =  ColorScheme.fromSeed(seedColor:Color.fromRGBO(255, 255, 255, 1.0));
//

import 'package:flutter/material.dart';

var kColorSchemelite = Colors.blue;

var litethemebg = Colors.grey;


var liteColor = Color.fromRGBO(255, 255, 255, 1.0);
var darklitecolor = Color.fromRGBO(210, 211, 211, 1.0);

var ratingcolor = Color.fromRGBO(255, 254, 0, 1.0);
var vegfoodcolor = Color.fromRGBO(24, 203, 0, 1.0);
var nonvegfoodcolor = Color.fromRGBO(168, 0, 0, 1.0);

var bottombarselectedcolor = Color.fromRGBO(44, 98, 122, 1.0);
var bottombarnotselectedcolor = Color.fromRGBO(255, 255, 255, 1.0);


ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: kColorSchemelite.shade900,
      primary: kColorSchemelite.shade800,
      secondary: kColorSchemelite.shade700,
    ),
    scaffoldBackgroundColor: litethemebg.shade50,
    iconTheme: IconThemeData(
        color: kColorSchemelite.shade200
    )
);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        brightness: Brightness.dark,
      surface: kColorSchemelite.shade400,
      primary: kColorSchemelite.shade300,
      secondary: kColorSchemelite.shade200,

    ),
    scaffoldBackgroundColor: litethemebg.shade900
);

