import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_minimized_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_logo_and_action_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_text_user_page.dart';
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
              end: Alignment(1, 4),
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
              const SpacingH(.02),
              SidebarLogoAndActionPage(),
              const SpacingH(.02),
              Column(
                children: [
                  const SidebarTextUserPage(),
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
