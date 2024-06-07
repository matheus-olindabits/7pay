import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/shared/enum/page_name_enum.dart';
import 'package:test_7pay/app/shared/widgets/header/header_default_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeaderDefaultPage(
              name: PageName.dashboard.name,
              icon: Icons.dashboard,
            ),
            Container(
              height: context.h(.3),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/banner.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
