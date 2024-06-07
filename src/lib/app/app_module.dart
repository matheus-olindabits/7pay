import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/address/address_module.dart';
import 'package:test_7pay/app/modules/dashboard/dashboard_module.dart';
import 'package:test_7pay/app/modules/main/controllers/main_controller.dart';
import 'package:test_7pay/app/modules/main/pages/main_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => MainController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => MainPage(),
          children: [
            ModuleRoute(
              '/dashboard/',
              module: DashboardModule(),
            ),
            ModuleRoute(
              '/address/',
              module: AddressModule(),
            ),
          ],
        ),
      ];
}
