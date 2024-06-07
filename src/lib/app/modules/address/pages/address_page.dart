import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_mobile/address_list_mobile_page.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_page.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: (context.isMobile)
              ? const AddressListMobilePage()
              : const AddressListPage(),
        ),
      ),
    );
  }
}
