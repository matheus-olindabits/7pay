import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class SidebarSettingsPage extends StatelessWidget {
  SidebarSettingsPage({super.key});

  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: (context.isMobile) ? context.w(.8) : context.w(.15),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: WColor.primaryColor),
            child: Observer(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/perfil.jpg',
                    scale: 2,
                  ),
                  const SpacingH(.02),
                  Text(
                    'Matheus Leal',
                    style: const TextStyle().textBold(14, Colors.white),
                  ),
                ],
              );
            }),
          ),
          ListTile(
            title: Text(
              'Redefinir Senha',
              style: const TextStyle().textBold(14),
            ),
            onTap: () {
              Modular.to.pop();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text(
              'Sair',
              style: const TextStyle().textBold(14),
            ),
            onTap: () {
              //_controller.logout();
            },
          ),
        ],
      ),
    );
  }
}
