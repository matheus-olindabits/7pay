import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/address/pages/address_page.dart';

class AddressModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const AddressPage(),
    ),
  ];
}
