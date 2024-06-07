import 'package:flutter/material.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_action_buttom_page.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_filter_page.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_table_page.dart';
import 'package:test_7pay/app/shared/enum/page_name_enum.dart';
import 'package:test_7pay/app/shared/widgets/header/header_default_page.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderDefaultPage(
          name: PageName.address.name,
          icon: Icons.location_on_sharp,
        ),
        AddressActionButtomPage(),
        const SpacingH(.02),
        AddressListFilterPage(),
        const SpacingH(.02),
        AddressListTablePage(),
      ],
    );
  }
}
