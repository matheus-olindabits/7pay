import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class HeaderDefaultPage extends StatelessWidget {
  final String name;
  final IconData icon;
  const HeaderDefaultPage({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.h(.1),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: Colors.black,
                        ),
                        const SpacingW(.005),
                        Text(
                          name,
                          style: const TextStyle().textBold(16),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(color: Colors.black12),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
