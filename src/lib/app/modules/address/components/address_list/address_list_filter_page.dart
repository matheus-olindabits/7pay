import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class AddressListFilterPage extends StatelessWidget {
  AddressListFilterPage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.w(.2),
          child: TextFormField(
            decoration: InputDecoration(
              label: const Text(
                "Bairro",
                style: TextStyle(color: Colors.black),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
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
              hintText: 'Busque pelo bairro',
              hintStyle: TextStyle(
                height: context.h(.0035),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            onChanged: (value) => _controller.setFilter(value),
          ),
        ),
        const SpacingW(.01),
        SizedBox(
          width: context.w(.2),
          child: DropdownButtonFormField(
            isExpanded: true,
            decoration: InputDecoration(
              label: const Text(
                "Uf",
                style: TextStyle(color: Colors.black),
              ),
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
            value: _controller.ufFilter,
            onChanged: (value) => _controller.setUfFilter(value!),
          ),
        ),
      ],
    );
  }
}
