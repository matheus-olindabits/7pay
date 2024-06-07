import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/core/style/text.dart';
import 'package:test_7pay/app/modules/address/components/address_list/address_list_rows_page.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';

class AddressListPaginateTablePage extends StatelessWidget {
  AddressListPaginateTablePage({super.key});

  final _controller = Modular.get<AddressController>();

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      header: Text(
        'Listagem dos Endereços',
        style: const TextStyle().textRegular(14),
      ),
      columns: [
        DataColumn(
          label: Text(
            'Cep',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'Logradouro',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'Complemento',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'Bairro',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'Localidade',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'UF',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
          label: Text(
            'Ibge',
            style: const TextStyle().textBold(14),
          ),
        ),
        DataColumn(
            label: Text(
          'Ações',
          style: const TextStyle().textBold(14),
        )),
      ],
      source: AddressListRow(_controller),
      rowsPerPage: _controller.isRowCountLessDefaultRowsPerPage
          ? _controller.rowsPerPage
          : _controller.rowsPerPageAlter,
      onRowsPerPageChanged: _controller.isRowCountLessDefaultRowsPerPage
          ? null
          : (rowCount) {
              _controller.changeRowPerPage(rowCount);
            },
    );
  }
}
