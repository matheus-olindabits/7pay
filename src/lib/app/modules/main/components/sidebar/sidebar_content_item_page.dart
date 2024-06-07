import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class SidebarContentItemPage extends StatelessWidget {
  final String item;
  final String itemName;
  final IconData icon;
  SidebarContentItemPage(
      {super.key,
      required this.item,
      required this.itemName,
      required this.icon});

  final _controller = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        children: [
          if (_controller.itemSidebarSelected == item) ...[
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
                      FittedBox(
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                      const SpacingW(.01),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.scaleDown,
                          child: Text(
                            itemName,
                            style: const TextStyle().textBold(
                              10,
                              Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () => {
                _controller.setItemSidebarSelectedAnfGoToRouter(item),
                if (context.isMobile) Modular.to.pop(),
              },
            ),
          ] else ...[
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
                      FittedBox(
                        child: Icon(
                          icon,
                          color: WColor.primaryColor,
                        ),
                      ),
                      const SpacingW(.01),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.scaleDown,
                          child: Text(
                            itemName,
                            style: const TextStyle().textBold(
                              10,
                              WColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () => {
                _controller.setItemSidebarSelectedAnfGoToRouter(item),
                if (context.isMobile) Modular.to.pop(),
              },
            ),
          ],
        ],
      );
    });
  }
}
