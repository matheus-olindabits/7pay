import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_7pay/app/modules/address/controllers/address_controller.dart';

class AddressListRow extends DataTableSource {
  final AddressController productListController;
  AddressListRow(this.productListController);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Observer(builder: (context) {
        if (index <= (productListController.productList.length - 1)) {
          return Text(
            productListController.productList[index].name.toUpperCase(),
          );
        } else {
          return const Text('');
        }
      })),
      DataCell(
        Builder(builder: (context) {
          if (index <= (productListController.productList.length - 1)) {
            return Tooltip(
              message: "Editar Produto",
              child: InkWell(
                onTap: () =>
                    productListController.setProductDetailsAndGoToDetails(
                  productListController.productList[index],
                ),
                child: const Icon(
                  Icons.edit_document,
                  color: Colors.black54,
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
  int get rowCount => productListController.productList.length;

  set rowCount(int newValue) {
    rowCount = newValue;
  }

  @override
  int get selectedRowCount => 0;
}
