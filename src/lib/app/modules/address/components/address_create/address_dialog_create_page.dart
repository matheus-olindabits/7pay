import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_cep_page.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_street_page.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/shared/widgets/navigator/navigator_key.dart';

Future<void> showCustomDialog() {
  final _controller = Modular.get<AddressController>();
  return showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) {
      return AlertDialog(
        title: const Text("Cadastrar um novo endereço"),
        content: SizedBox(
          width: context.w(.5),
          child: Observer(builder: (context) {
            if (_controller.addressCreateType == 'cep') {
              return AddressDialogCreateByCepPage();
            } else {
              return AddressDialogCreateByStreetPage();
            }
          }),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Buscar"),
          ),
        ],
      );
    },
  );
}
