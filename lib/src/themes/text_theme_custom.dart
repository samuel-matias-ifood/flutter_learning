import 'package:flutter/material.dart';

class TextThemeCustom {
  final Title title = Title();
}

class Title {
  final TextStyle h1 = TextStyle(
    fontSize: Const.fontSizeH1,
    fontStyle: FontStyle.italic,
  );
  final TextStyle h2 = TextStyle(
      fontSize: Const.fontSizeH2,
      color: Colors.red,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);
  final TextStyle h3 = TextStyle(
    fontSize: Const.fontSizeH3,
    fontWeight: FontWeight.normal,
  );
}

class Const {
  static const double fontSizeH1 = 20.0;
  static const double fontSizeH2 = 18.0;
  static const double fontSizeH3 = 16.0;
}
