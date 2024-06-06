import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/components/action_buttom/action_buttom_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_page.dart';
//import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  //final _controller = Modular.get<MainController>();

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
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, right: 20),
                    child: Column(
                      children: [
                        ActionButtomPage(),
                        Expanded(child: RouterOutlet()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
