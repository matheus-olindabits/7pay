import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/modules/dashboard/pages/dashboard_page.dart';
import 'package:test_7pay/app/modules/main/pages/not_found_page.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const DashboardPage(),
    ),
    WildcardRoute(child: (_, args) => const NotFoundPage()),
  ];
}
