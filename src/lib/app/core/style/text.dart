import 'package:flutter/material.dart';

extension TextStyleValues on TextStyle {
  TextStyle textLight(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w300,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textRegular(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textBold(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textExtraBold(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w900,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textUnderlineStyle(double size, [Color? color]) => TextStyle(
        fontSize: size,
        color: (color == null) ? Colors.black : color,
        decoration: TextDecoration.underline,
      );
}
