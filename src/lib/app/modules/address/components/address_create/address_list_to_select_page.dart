import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_w.dart';

class AddressListToSelectPage extends StatelessWidget {
  AddressListToSelectPage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SpacingH(.05),
        const Text('Resultado da busca'),
        const Divider(
          color: Colors.black12,
        ),
        if (_controller.addressListToSelect.isEmpty) ...[
          const SpacingH(.05),
          Center(
            child: Text(
              'Não houve resultado encontrado na busca!',
              style: const TextStyle().textBold(14),
            ),
          ),
        ] else ...[
          for (var item in _controller.addressListToSelect) ...[
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    height: context.h(.1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: (!context.isMobile)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text(item.cep)),
                                const SpacingW(.02),
                                Flexible(child: Text(item.street)),
                                const SpacingW(.02),
                                Flexible(child: Text(item.district)),
                                const SpacingW(.02),
                                Flexible(child: Text(item.city)),
                                const SpacingW(.02),
                                Flexible(child: Text(item.uf)),
                                const SpacingW(.02),
                                Flexible(child: Text(item.complement ?? '')),
                                const SpacingW(.02),
                              ],
                            )
                          : FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(item.cep),
                                  const SpacingW(.02),
                                  Text(item.street),
                                  const SpacingW(.02),
                                  Text(item.district),
                                  const SpacingW(.02),
                                  Text(item.city),
                                  const SpacingW(.02),
                                  Text(item.uf),
                                  const SpacingW(.02),
                                  Text(item.complement ?? ''),
                                  const SpacingW(.02),
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
                const SpacingW(.01),
                IconButton(
                  onPressed: () => _controller.addAddress(item),
                  icon: const Icon(Icons.add_circle_outlined),
                ),
              ],
            ),
            const SpacingH(.02),
          ],
        ]
      ],
    );
  }
}
