import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';

class SpacingW extends StatelessWidget {
  final double value;
  const SpacingW(this.value, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w(value),
    );
  }
}
