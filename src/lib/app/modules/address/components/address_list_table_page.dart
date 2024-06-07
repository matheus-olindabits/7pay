import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/core/style/size.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/shared/enum/text_not_found_enum.dart';
import 'package:test_7pay/app/shared/widgets/content/empty_content.dart';
import 'package:test_7pay/app/shared/widgets/spacing/divider_h.dart';

class AddressListTablePage extends StatelessWidget {
  const AddressListTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      _controller.initializePageCount();
      return Column(
        children: [
          //ProductListFilterPage(),
          const SpacingH(.02),
          (_controller.productList.isNotEmpty)
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
                    child: PaginatedDataTable(
                      columnSpacing: context.w(.5),
                      header: Text(
                        'Listagem dos Produtos',
                        style: const TextStyle().textRegular(14),
                      ),
                      columns: [
                        DataColumn(
                            label: Text(
                          'Nome',
                          style: const TextStyle().textBold(14),
                        )),
                        DataColumn(
                            label: Text(
                          'Ações',
                          style: const TextStyle().textBold(14),
                        )),
                      ],
                      source: ProductDTS(_controller),
                      rowsPerPage: _controller.isRowCountLessDefaultRowsPerPage
                          ? _controller.rowsPerPage
                          : _controller.rowsPerPageAlter,
                      onRowsPerPageChanged:
                          _controller.isRowCountLessDefaultRowsPerPage
                              ? null
                              : (rowCount) {
                                  _controller.changeRowPerPage(rowCount);
                                },
                    ),
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
