import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/components/address_list_page.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.h(.05)),
            child: (context.isMobile)
                ? const AddressListPage()
                : const AddressListPage(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Visibility(
        visible: context.isMobile ? true : false,
        child: FloatingActionButton(
          onPressed: () {}, //_controller.setRouterGoToCreate(),
          backgroundColor: WColor.primaryColor,
          tooltip: 'Cadastrar Produto',
          child: const Icon(Icons.assignment_add),
        ),
      ),
    );
  }
}
