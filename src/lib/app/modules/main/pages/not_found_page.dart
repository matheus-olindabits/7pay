import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/text.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Página não encontrada',
          style: const TextStyle().textBold(20),
        ),
      ),
    );
  }
}
