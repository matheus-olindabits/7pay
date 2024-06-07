import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:test_7pay/app/modules/address/shared/services/address_service.dart';

part 'address_controller.g.dart';

class AddressController = AddressControllerBase with _$AddressController;

abstract class AddressControllerBase with Store {
  final AddressService _addressService;

  AddressControllerBase({
    required AddressService addressService,
  }) : _addressService = addressService;

  @observable
  List<Product> productList = [];

  @observable
  int rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @observable
  int rowsPerPageAlter = PaginatedDataTable.defaultRowsPerPage;

  @observable
  bool isRowCountLessDefaultRowsPerPage = false;
}
