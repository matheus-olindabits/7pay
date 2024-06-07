import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/modules/address/pages/address_page.dart';
import 'package:test_7pay/app/modules/address/repository/address_repository_impl.dart';
import 'package:test_7pay/app/modules/address/shared/services/address_service_impl.dart';
import 'package:test_7pay/app/modules/main/pages/not_found_page.dart';

class AddressModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => AddressController(
        addressService: i(),
      ),
    ),
    Bind.singleton(
      (i) => AddressRepositoryImpl(),
    ),
    Bind.singleton(
      (i) => AddressServiceImpl(i()),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const AddressPage(),
    ),
    WildcardRoute(child: (_, args) => const NotFoundPage()),
  ];
}
