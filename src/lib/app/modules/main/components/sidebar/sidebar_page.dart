import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_minimized_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_page.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class SidebarPage extends StatelessWidget {
  SidebarPage({super.key});

  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(4, 2),
              colors: [WColor.primaryColor, WColor.secondColor],
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          width: (!_controller.menuClick) ? context.w(.15) : context.w(.07),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Image.asset(
                'assets/images/logos/logo.png',
                scale: 2,
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
              const SpacingH(.02),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          'Olá, Matheus',
                          style:
                              const TextStyle().textRegular(12, Colors.white),
                        ),
                        const Divider(
                          color: Colors.white12,
                        ),
                      ],
                    ),
                  ),
                  (!_controller.menuClick)
                      ? SidebarContentPage()
                      : SidebarContentMinimizedPage(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
