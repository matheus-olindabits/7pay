import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:test_7pay/app/modules/address/shared/models/address.dart';
import 'package:test_7pay/app/modules/address/shared/services/address_service.dart';

part 'address_controller.g.dart';

class AddressController = AddressControllerBase with _$AddressController;

abstract class AddressControllerBase with Store {
  final AddressService _addressService;

  AddressControllerBase({
    required AddressService addressService,
  }) : _addressService = addressService;

  @observable
  ObservableList<Address> addressList = ObservableList.of([
    Address(
      cep: "12345-678",
      street: "Rua Y",
      district: "bairro Y",
      city: "cidade Y",
      uf: "Estado Y",
    ),
    Address(
      cep: "12345-678",
      street: "Rua Y",
      district: "bairro Y",
      city: "cidade Y",
      uf: "Estado Y",
    ),
  ]);

  @observable
  int rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @observable
  int rowsPerPageAlter = PaginatedDataTable.defaultRowsPerPage;

  @observable
  bool isRowCountLessDefaultRowsPerPage = false;

  @action
  void initializePageCount() {
    var tableItemsCount = addressList.length;
    var defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
    isRowCountLessDefaultRowsPerPage = tableItemsCount < defaultRowsPerPage;

    rowsPerPage =
        isRowCountLessDefaultRowsPerPage ? tableItemsCount : defaultRowsPerPage;
  }

  @action
  void changeRowPerPage(int? value) {
    if (value != null) {
      rowsPerPage = value;
      rowsPerPageAlter = value;
    }
  }
}
