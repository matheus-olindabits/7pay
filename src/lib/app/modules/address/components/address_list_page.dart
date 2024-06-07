import 'package:flutter/material.dart';
import 'package:test_7pay/app/modules/address/components/address_list_table_page.dart';
import 'package:test_7pay/app/shared/enum/page_name_enum.dart';
import 'package:test_7pay/app/shared/widgets/header/header_default_page.dart';

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
        AddressListTablePage(),
      ],
    );
  }
}
