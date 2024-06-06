import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/router.dart';

class SidebarContentMinimizedPage extends StatelessWidget {
  SidebarContentMinimizedPage({super.key});

  final _controller = Modular.get<MainController>();

  @override
  build(BuildContext context) {
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
            child: const Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Icon(
                Icons.house_outlined,
                color: WColor.primaryColor,
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
            child: const Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Icon(
                Icons.location_on_outlined,
                color: WColor.light,
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
            child: const Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 10,
                left: 10,
              ),
              child: Icon(
                Icons.attach_money_outlined,
                color: WColor.primaryColor,
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
