import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/components/action_buttom/action_buttom_page.dart';
import 'package:test_7pay/app/modules/main/components/appbar/main_appbar_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_mobile/sidebar_mobile_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_settings_page.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: (context.isMobile) ? const SidebarMobilePage() : null,
      endDrawer: const SidebarSettingsPage(),
      appBar: (context.isMobile)
          ? MainAppbarPage(
              callback: () => _scaffoldKey.currentState!.openEndDrawer(),
            )
          : null,
      body: context.isMobile
          ? const RouterOutlet()
          : Row(
              children: [
                SidebarPage(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        ActionButtomPage(
                          callback: () =>
                              _scaffoldKey.currentState!.openEndDrawer(),
                        ),
                        const SpacingH(.05),
                        const Expanded(
                          child: RouterOutlet(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
