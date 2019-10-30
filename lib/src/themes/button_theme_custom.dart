import 'package:flutter/material.dart';

class ButtonThemeCustom {
  static primaryButton(GestureTapCallback onPress, Widget label) {
    final Container primaryButton1 = Container(
        width: Const.containerWidth,
        height: Const.containerHeight,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.red,
        ),
        child: label);

    final GestureDetector primaryButton2 = GestureDetector(
      child: primaryButton1,
      onTap: onPress,
    );

    return primaryButton2;
  }
}

class Const {
  static const double containerWidth = 300.0;
  static const double containerHeight = 50.0;
}
