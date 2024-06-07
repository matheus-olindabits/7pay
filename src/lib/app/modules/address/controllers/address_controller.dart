import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:test_7pay/app/modules/address/shared/enum/address_create_type_enum.dart';
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
      ibge: "8899",
    ),
    Address(
      cep: "12345-678",
      street: "Rua Y",
      district: "bairro Y",
      city: "cidade Y",
      uf: "Estado Y",
      ibge: "8899",
    ),
  ]);

  final formKeyByCep = GlobalKey<FormState>();
  final formKeyByStreet = GlobalKey<FormState>();

  @observable
  int rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @observable
  int rowsPerPageAlter = PaginatedDataTable.defaultRowsPerPage;

  @observable
  bool isRowCountLessDefaultRowsPerPage = false;

  @observable
  String addressCreateType = AddressCreateType.cep.name;

  @observable
  String cep = '';

  @observable
  bool openToSelect = false;

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

  @action
  void setAddressCreateType(String value) {
    addressCreateType = value;
  }

  @action
  void setCep(String value) {
    cep = value;
  }

  @action
  void setOpenToSelect() {
    (openToSelect == true) ? openToSelect = false : openToSelect = true;
  }

  checkAddressCreateTypeToSearch() {
    if (addressCreateType == AddressCreateType.cep.name) {
      if (formKeyByCep.currentState!.validate()) {
        formKeyByCep.currentState!.save();
        listAddress();
      }
    } else {
      if (formKeyByStreet.currentState!.validate()) {
        formKeyByStreet.currentState!.save();
        listAddress();
      }
    }
  }

  @action
  Future<void> listAddress() async {
    try {
      final addresList = await _addressService.getAddressByCepRequest(cep);
      print('foi');
    } catch (error) {
      //HandleError.errorRequest(error: error);
      print(error);
    } finally {
      //loading = false;
    }
  }
}
