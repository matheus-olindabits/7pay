import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_cep_page.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_street_page.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/modules/address/shared/enum/address_create_type_enum.dart';
import 'package:test_7pay/app/shared/widgets/navigator/navigator_key.dart';

Future<void> showCustomDialog() {
  final _controller = Modular.get<AddressController>();
  return showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) {
      return AlertDialog(
        title: const Text("Cadastrar um novo endereço"),
        content: Observer(builder: (context) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: context.w(.5),
            height: (!_controller.openToSelect) ? context.h(.2) : context.h(.8),
            child: (_controller.addressCreateType == AddressCreateType.cep.name)
                ? AddressDialogCreateByCepPage()
                : AddressDialogCreateByStreetPage(),
          );
        }),
        actions: [
          TextButton(
            onPressed: () => {
              _controller.setOpenToSelect(),
              _controller.checkAddressCreateTypeToSearch(),
            },
            child: const Text("Buscar"),
          ),
        ],
      );
    },
  );
}
