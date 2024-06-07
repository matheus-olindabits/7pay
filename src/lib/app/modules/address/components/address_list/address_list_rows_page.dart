import 'package:flutter/material.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';

class AddressListRow extends DataTableSource {
  final AddressController addressListController;
  AddressListRow(this.addressListController);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(
        Text(
          addressListController.addressListFiltered[index].cep,
        ),
      ),
      DataCell(Text(
        addressListController.addressListFiltered[index].street,
      )),
      DataCell(Text(
        addressListController.addressListFiltered[index].complement ?? '---',
      )),
      DataCell(Text(
        addressListController.addressListFiltered[index].district,
      )),
      DataCell(Text(
        addressListController.addressListFiltered[index].city,
      )),
      DataCell(Text(
        addressListController.addressListFiltered[index].uf,
      )),
      DataCell(Text(
        addressListController.addressListFiltered[index].ibge,
      )),
      DataCell(
        Builder(builder: (context) {
          return Tooltip(
            message: "Remover Endereço",
            child: InkWell(
              onTap: () => addressListController.removeAddress(index),
              child: const Icon(
                Icons.delete_rounded,
                color: WColor.primaryColor,
              ),
            ),
          );
        }),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => addressListController.addressListFiltered.length;

  set rowCount(int newValue) {
    rowCount = newValue;
  }

  @override
  int get selectedRowCount => 0;
}
