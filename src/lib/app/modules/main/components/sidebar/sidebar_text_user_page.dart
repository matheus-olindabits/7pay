import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/text.dart';

class SidebarTextUserPage extends StatelessWidget {
  const SidebarTextUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            'Olá, Matheus',
            style: const TextStyle().textRegular(12, Colors.white),
          ),
          const Divider(
            color: Colors.white12,
          ),
        ],
      ),
    );
  }
}
