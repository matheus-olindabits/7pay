import 'package:flutter/material.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_item_minimized_page.dart';
import 'package:test_7pay/app/modules/main/shared/enum/item_sidebar_selected_enum.dart';

class SidebarContentMinimizedPage extends StatelessWidget {
  const SidebarContentMinimizedPage({super.key});

  @override
  build(BuildContext context) {
    return Column(
      children: [
        SidebarContentItemMinimizedPage(
          item: ItemSidebarSelected.dashboard.name,
          icon: Icons.house_outlined,
        ),
        SidebarContentItemMinimizedPage(
          item: ItemSidebarSelected.address.name,
          icon: Icons.location_on_outlined,
        ),
        SidebarContentItemMinimizedPage(
          item: ItemSidebarSelected.financial.name,
          icon: Icons.attach_money_outlined,
        ),
        SidebarContentItemMinimizedPage(
          item: ItemSidebarSelected.card.name,
          icon: Icons.credit_card,
        ),
      ],
    );
  }
}
