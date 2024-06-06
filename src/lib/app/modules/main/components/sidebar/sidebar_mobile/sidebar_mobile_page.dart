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

class SidebarMobilePage extends StatelessWidget {
  SidebarMobilePage({super.key});

  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
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
          width: context.w(.8),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Image.asset(
                'assets/images/logos/logo.png',
                scale: 2,
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
                      ? const SidebarContentPage()
                      : const SidebarContentMinimizedPage(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
