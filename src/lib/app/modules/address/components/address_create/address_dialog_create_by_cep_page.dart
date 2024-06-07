import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/modules/address/shared/enum/address_create_type_enum.dart';
import 'package:test_7pay/app/shared/formatter/cep_input_formatter.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class AddressDialogCreateByCepPage extends StatelessWidget {
  AddressDialogCreateByCepPage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              color: Colors.black12,
            ),
            const SpacingH(.02),
            Form(
              key: _controller.formKeyByCep,
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CepTextInputFormatter(),
                ],
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 5.0,
                  ),
                  counterText: "",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Digite o cep para buscar o endereço',
                  hintStyle: TextStyle(
                    height: context.h(.0035),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite o cep";
                  } else if (value.length < 9) {
                    return "Digite o cep no formato correto";
                  }
                  return null;
                },
                onChanged: (value) => _controller.setCep(value),
              ),
            ),
            const SpacingH(.01),
            TextButton(
              onPressed: () {
                _controller.setAddressCreateType(AddressCreateType.street.name);
              },
              child: const Text("Não sabe o cep?"),
            ),
          ],
        ),
      ],
    );
  }
}
