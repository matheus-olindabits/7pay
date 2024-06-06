import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';

class SpacingH extends StatelessWidget {
  final double value;
  const SpacingH(this.value, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(value),
    );
  }
}
