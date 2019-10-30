import 'package:flutter/material.dart';

class TextThemeCustom {
  final Title title = Title();
}

class Title {
  final TextStyle h1 = TextStyle(
    fontSize: 20.0,
    fontStyle: FontStyle.italic,
  );
  final TextStyle h2 = TextStyle(
      fontSize: 18.0,
      color: Colors.red,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);
  final TextStyle h3 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );
}
