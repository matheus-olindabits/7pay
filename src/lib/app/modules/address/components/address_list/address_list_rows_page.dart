import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_7pay/app/core/style/color.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';

class AddressListRow extends DataTableSource {
  final AddressController productListController;
  AddressListRow(this.productListController);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].cep,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].street,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].complement ?? '---',
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].district,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].city,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].uf,
        );
      })),
      DataCell(Observer(builder: (context) {
        return Text(
          productListController.addressList[index].ibge,
        );
      })),
      DataCell(
        Builder(builder: (context) {
          if (index <= (productListController.addressList.length - 1)) {
            return Tooltip(
              message: "Editar Produto",
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.edit_document,
                  color: WColor.primaryColor,
                ),
              ),
            );
          } else {
            return const Text('');
          }
        }),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => productListController.addressList.length;

  set rowCount(int newValue) {
    rowCount = newValue;
  }

  @override
  int get selectedRowCount => 0;
}
