import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';

class EmptyContent extends StatelessWidget {
  final String text;
  final bool icon;
  const EmptyContent({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.w(.05)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon) ...{
              Icon(
                Icons.search_off_outlined,
                size: context.h(.05),
              ),
              SizedBox(
                height: context.h(.01),
              ),
            },
            Text(
              text,
              style: const TextStyle().textRegular(20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
