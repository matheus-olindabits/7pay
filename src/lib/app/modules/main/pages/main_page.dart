import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.isMobile
          ? const RouterOutlet()
          : Observer(
              builder: (context) {
                return Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          right: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SpacingW(.005),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  width: context.w(.03),
                                  height: context.w(.03),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Colors.black,
                                    ),
                                    tooltip: 'Configurações',
                                    onPressed: () => {},
                                  ),
                                ),
                              ],
                            ),
                            const Expanded(child: RouterOutlet()),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
