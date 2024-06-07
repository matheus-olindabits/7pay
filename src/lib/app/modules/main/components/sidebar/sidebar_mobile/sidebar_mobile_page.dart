import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_mobile/sidebar_logo_mobile_page.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_mobile/sidebar_text_user_mobile.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class SidebarMobilePage extends StatelessWidget {
  const SidebarMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
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
          width: context.w(.8),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              SidebarLogoMobilePage(),
              SpacingH(.02),
              Column(
                children: [
                  SidebarTextUserMobile(),
                  SidebarContentPage(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
