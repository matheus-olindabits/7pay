import 'package:flutter/material.dart';

class WColor {
  // ******** primary colors ********
  static const Color primaryColor = Color(0xFF3d3c3c);
  static const Color secondColor = Color(0xFFb9802b);
  static const Color light = Color(0xFFE2E2E4);
  static const Color dark = Color(0xFF7F8192);
  static const Color danger = Color.fromARGB(255, 229, 115, 115);

  static const MaterialColor themePrimary = MaterialColor(
    0xFF01335F,
    <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    },
  );
}
