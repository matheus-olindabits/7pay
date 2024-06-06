import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class MainAppbarPage extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback callback;
  const MainAppbarPage({super.key, required this.callback});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WColor.primaryColor,
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: <Widget>[
        const Icon(
          Icons.chat,
          color: Colors.white,
        ),
        const SpacingW(.02),
        const Icon(
          Icons.notifications_rounded,
          color: Colors.white,
        ),
        IconButton(
          icon: const Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
          onPressed: () => callback(),
        ),
      ],
    );
  }
}
