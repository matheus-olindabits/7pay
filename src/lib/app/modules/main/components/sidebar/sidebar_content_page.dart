import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/router.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class SidebarContentPage extends StatelessWidget {
  const SidebarContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Container(
            width: context.w(.15),
            height: context.h(.05),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  WColor.light,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.house_outlined,
                    color: WColor.primaryColor,
                  ),
                  const SpacingW(.01),
                  Expanded(
                    child: Text(
                      'Dashboard',
                      style: const TextStyle().textBold(
                        10,
                        WColor.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Modular.to.navigate(RouterApp.dashboard);
          },
        ),
        ListTile(
          title: Container(
            width: context.w(.15),
            height: context.h(.05),
            decoration: const BoxDecoration(
              color: WColor.secondColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: WColor.light,
                  ),
                  const SpacingW(.01),
                  Expanded(
                    child: Text(
                      'Endereço',
                      style: const TextStyle().textBold(
                        10,
                        WColor.light,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Modular.to.navigate(RouterApp.dashboard);
          },
        ),
        ListTile(
          title: Container(
            width: context.w(.15),
            height: context.h(.05),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  WColor.light,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.attach_money_outlined,
                    color: WColor.primaryColor,
                  ),
                  const SpacingW(.01),
                  Expanded(
                    child: Text(
                      'Financeiro',
                      style: const TextStyle().textBold(
                        10,
                        WColor.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Modular.to.navigate(RouterApp.dashboard);
          },
        ),
      ],
    );
  }
}
