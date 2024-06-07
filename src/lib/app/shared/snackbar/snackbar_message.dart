import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/shared/widgets/navigator/navigator_key.dart';

class SnackBarMessage {
  static notification(
    String text,
  ) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: 'Ops, não foi possível realizar a ação',
      titleColor: Colors.white,
      message: text,
      messageColor: Colors.white,
      backgroundColor: WColor.danger,
      duration: const Duration(seconds: 3),
    ).show(navigatorKey.currentContext!);
  }
}
