import 'package:flutter/material.dart';
import 'package:test_7pay/app/modules/main/components/sidebar/sidebar_content_item_page.dart';
import 'package:test_7pay/app/modules/main/shared/enum/item_sidebar_selected_enum.dart';

class SidebarContentPage extends StatelessWidget {
  const SidebarContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SidebarContentItemPage(
          item: ItemSidebarSelected.dashboard.name,
          itemName: 'Dashboard',
          icon: Icons.dashboard_outlined,
        ),
        SidebarContentItemPage(
          item: ItemSidebarSelected.address.name,
          itemName: 'Endereço',
          icon: Icons.location_on_outlined,
        ),
        SidebarContentItemPage(
          item: ItemSidebarSelected.financial.name,
          itemName: 'Financeiro',
          icon: Icons.attach_money_outlined,
        ),
      ],
    );
  }
}
