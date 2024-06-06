import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/dashboard/dashboard_module.dart';
import 'package:test_7pay/app/modules/main/pages/main_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const MainPage(),
          children: [
            ModuleRoute('/dashboard/', module: DashboardModule()),
          ],
        ),
      ];
}
