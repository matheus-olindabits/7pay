import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class AddressListFilterPage extends StatelessWidget {
  const AddressListFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.w(.2),
          child: TextFormField(
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
                borderRadius: BorderRadius.circular(40),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(40),
              ),
              hintText: 'Busque pelo bairro',
              hintStyle: TextStyle(
                height: context.h(.0035),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            onChanged: (value) {},
          ),
        ),
        const SpacingW(.01),
        SizedBox(
          width: context.w(.2),
          child: TextFormField(
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
                borderRadius: BorderRadius.circular(40),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(40),
              ),
              hintText: 'Busque pelo UF',
              hintStyle: TextStyle(
                height: context.h(.0035),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
