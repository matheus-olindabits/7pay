import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/router.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class SidebarPage extends StatelessWidget {
  const SidebarPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        width: (context.isMobile) ? context.w(.8) : context.w(.15),
        child: Observer(builder: (context) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              if (context.isMobile) ...{
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: WColor.primaryColor,
                  ),
                  child: Image.asset(
                    'assets/images/logos/logo.png',
                  ),
                ),
              } else ...{
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/logos/logo.png',
                    scale: 2,
                  ),
                ),
                const SpacingH(.05),
                Observer(builder: (context) {
                  return Column(
                    children: [
                      Text(
                        'Olá, Matheus',
                        style: const TextStyle().textRegular(12, Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          color: Colors.white12,
                        ),
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
                }),
              },
            ],
          );
        }),
      ),
    );
  }
}
