import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/modules/address/shared/enum/address_create_type_enum.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class AddressDialogCreateByStreetMobilePage extends StatelessWidget {
  AddressDialogCreateByStreetMobilePage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _controller.formKeyByStreet,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.black12,
          ),
          const SpacingH(.02),
          TextFormField(
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
              hintText: 'Digite o nome da rua para buscar o endereço',
              hintStyle: TextStyle(
                height: context.h(.0035),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Digite o nome da rua";
              }
              return null;
            },
            onChanged: (value) => _controller.setStreet(value),
          ),
          const SpacingH(.02),
          SizedBox(
            child: DropdownButtonFormField(
              isExpanded: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: '',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                filled: true,
              ),
              dropdownColor: Colors.white,
              validator: (value) => (value == null || value.isEmpty)
                  ? "Selecione um estado"
                  : null,
              value: _controller.uf,
              items: _controller.ufList
                  .map<DropdownMenuItem<String>>((String value) {
                if (value.isNotEmpty) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                } else {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: const Text('Selecione um UF'),
                  );
                }
              }).toList(),
              onChanged: (value) => _controller.setUf(value!),
            ),
          ),
          const SpacingH(.02),
          TextFormField(
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
              hintText: 'Digite o nome da cidade',
              hintStyle: TextStyle(
                height: context.h(.0035),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Digite o cidade";
              }
              return null;
            },
            onChanged: (value) => _controller.setCity(value),
          ),
          const SpacingH(.01),
          TextButton(
            onPressed: () {
              _controller.setAddressCreateType(AddressCreateType.cep.name);
            },
            child: const Text("Buscar pelo cep"),
          ),
        ],
      ),
    );
  }
}
