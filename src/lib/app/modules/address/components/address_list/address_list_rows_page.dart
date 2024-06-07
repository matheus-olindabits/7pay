import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';

class AddressListRow extends DataTableSource {
  final AddressController addressListController;
  AddressListRow(this.addressListController);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].cep,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].street,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].complement ?? '---',
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].district,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].city,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].uf,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          addressListController.addressList[index].ibge,
        );
      })),
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
  int get rowCount => addressListController.addressList.length;

  set rowCount(int newValue) {
    rowCount = newValue;
  }

  @override
  int get selectedRowCount => 0;
}
