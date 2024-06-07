import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_create_mobile/address_dialog_create_by_street_mobile_page.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_cep_page.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_dialog_create_by_street_page.dart';
import 'package:test_7pay/app/modules/address/components/address_create/address_list_to_select_page.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/modules/address/shared/enum/address_create_type_enum.dart';
import 'package:test_7pay/app/shared/widgets/navigator/navigator_key.dart';

Future<void> showCustomDialog() {
  final controller = Modular.get<AddressController>();
  return showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) {
      return Observer(builder: (context) {
        return AlertDialog(
          title: const Text("Cadastrar um novo endereço"),
          content: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: context.w(.5),
            height: (!controller.openToSelect) ? context.h(.3) : context.h(.8),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Observer(builder: (context) {
                        return Column(
                          children: [
                            (controller.addressCreateType ==
                                    AddressCreateType.cep.name)
                                ? AddressDialogCreateByCepPage()
                                : (context.isMobile)
                                    ? AddressDialogCreateByStreetMobilePage()
                                    : AddressDialogCreateByStreetPage(),
                            if (controller.openToSelect) ...[
                              AddressListToSelectPage(),
                            ],
                          ],
                        );
                      }),
                    ),
                  ),
                );
              },
            ),
          ),
          actions: [
            (!controller.loading)
                ? TextButton(
                    onPressed: () => {
                      controller.checkAddressCreateTypeToSearch(),
                    },
                    child: const Text("Buscar"),
                  )
                : const CircularProgressIndicator(strokeWidth: 2),
          ],
        );
      });
    },
  );
}
