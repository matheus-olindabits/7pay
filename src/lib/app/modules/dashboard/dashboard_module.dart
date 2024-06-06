import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/dashboard/pages/dashboard_page.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const DashboardPage(),
    ),
  ];
}
