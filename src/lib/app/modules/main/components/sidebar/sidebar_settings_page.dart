import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class SidebarSettingsPage extends StatelessWidget {
  const SidebarSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: (context.isMobile) ? context.w(.8) : context.w(.15),
      child: ListView(
        children: [
          Container(
            color: WColor.primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(40),
                      child: Image.asset(
                        'assets/images/perfil.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SpacingH(.02),
                  Text(
                    'Matheus Leal',
                    style: const TextStyle().textBold(14, Colors.white),
                  ),
                  Text(
                    'Administrador',
                    style: const TextStyle().textRegular(12, Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Minha Conta',
              style: const TextStyle().textBold(14),
            ),
            onTap: () => Modular.to.pop(),
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
            onTap: () => Modular.to.pop(),
          ),
        ],
      ),
    );
  }
}
