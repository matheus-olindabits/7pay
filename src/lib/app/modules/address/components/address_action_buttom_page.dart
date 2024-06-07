import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class AddressActionButtomPage extends StatelessWidget {
  AddressActionButtomPage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: WColor.secondColor,
          onPressed: () {},
          tooltip: 'Atualizar',
          child: const Icon(Icons.refresh_rounded),
        ),
        const SpacingW(.01),
        FloatingActionButton(
          backgroundColor: WColor.primaryColor,
          onPressed: () {},
          tooltip: 'Cadastrar Endereço',
          child: const Icon(Icons.post_add_sharp),
        ),
      ],
    );
  }
}
