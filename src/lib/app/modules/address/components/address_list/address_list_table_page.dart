import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_paginate_table_page.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';
import 'package:test_7pay/app/shared/enum/text_not_found_enum.dart';
import 'package:test_7pay/app/shared/widgets/content/empty_content.dart';

class AddressListTablePage extends StatelessWidget {
  AddressListTablePage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      _controller.initializePaginatedDataTable();
      return Column(
        children: [
          (_controller.addressListFiltered.isNotEmpty)
              ? SizedBox(
                  width: double.infinity,
                  child: Theme(
                    data: ThemeData(
                      cardColor: WColor.primaryColor,
                      textTheme: const TextTheme(
                        bodySmall: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        secondary: Colors.white,
                        onSecondary: Colors.white,
                        error: Colors.red,
                        onError: Colors.red,
                        background: Colors.white,
                        onBackground: Colors.white,
                        surface: Colors.white,
                        onSurface: Colors.black,
                      ),
                    ),
                    child: AddressListPaginateTablePage(),
                  ),
                )
              : EmptyContent(
                  text: NotFound.addressNotFound.name,
                  icon: false,
                ),
        ],
      );
    });
  }
}
