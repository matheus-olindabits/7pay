import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class ActionButtomPage extends StatelessWidget {
  final VoidCallback callback;
  const ActionButtomPage({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            onPressed: () => callback(),
          ),
        ),
      ],
    );
  }
}
