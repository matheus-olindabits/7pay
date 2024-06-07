import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';

class SidebarLogoAndActionPage extends StatelessWidget {
  SidebarLogoAndActionPage({super.key});

  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logos/logo.png',
          scale: 1.5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(
              (!_controller.menuClick)
                  ? Icons.arrow_left_outlined
                  : Icons.arrow_right_outlined,
              color: Colors.white,
            ),
            onPressed: () => _controller.setMenuClick(),
          ),
        ),
      ],
    );
  }
}
