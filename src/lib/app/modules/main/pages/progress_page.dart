import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/text.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Página em construção',
          style: const TextStyle().textBold(20),
        ),
      ),
    );
  }
}
