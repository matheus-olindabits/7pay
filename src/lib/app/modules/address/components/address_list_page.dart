import 'package:flutter/material.dart';
import 'package:test_7pay/app/shared/enum/page_name_enum.dart';
import 'package:test_7pay/app/shared/widgets/header/header_page.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderPage(name: PageName.address.name, icon: Icons.location_on_sharp),
      ],
    );
  }
}
