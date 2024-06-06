import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(RouterApp.dashboard);
    return MaterialApp.router(
      title: '7pay',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: WColor.themePrimary,
          backgroundColor: Colors.grey[100],
        ),
        scaffoldBackgroundColor: const Color(0xFFF1F4FA),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
