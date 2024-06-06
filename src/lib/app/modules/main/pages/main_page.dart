import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_minimized_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_page.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: (context.isMobile) ? SidebarPage() : null,
      // endDrawer: (_controller.isToNotificationSidebar)
      //       ? const SidebarNotifications()
      //       : const SidebarSettingsPage(),
      body: context.isMobile
          ? const RouterOutlet()
          : Row(
              children: [
                SidebarPage(),
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
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: WColor.primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: context.w(.03),
                              height: context.w(.03),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                                tooltip: 'Chat',
                                onPressed: () {},
                              ),
                            ),
                            const SpacingW(.005),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: WColor.primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: context.w(.03),
                              height: context.w(.03),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.notifications_rounded,
                                  color: Colors.white,
                                ),
                                tooltip: 'Notificações',
                                onPressed: () {},
                              ),
                            ),
                            const SpacingW(.005),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: WColor.primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: context.w(.03),
                              height: context.w(.03),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
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
            ),
    );
  }
}
