// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddressController on AddressControllerBase, Store {
  late final _$addressListAtom =
      Atom(name: 'AddressControllerBase.addressList', context: context);

  @override
  ObservableList<Address> get addressList {
    _$addressListAtom.reportRead();
    return super.addressList;
  }

  @override
  set addressList(ObservableList<Address> value) {
    _$addressListAtom.reportWrite(value, super.addressList, () {
      super.addressList = value;
    });
  }

  late final _$rowsPerPageAtom =
      Atom(name: 'AddressControllerBase.rowsPerPage', context: context);

  @override
  int get rowsPerPage {
    _$rowsPerPageAtom.reportRead();
    return super.rowsPerPage;
  }

  @override
  set rowsPerPage(int value) {
    _$rowsPerPageAtom.reportWrite(value, super.rowsPerPage, () {
      super.rowsPerPage = value;
    });
  }

  late final _$rowsPerPageAlterAtom =
      Atom(name: 'AddressControllerBase.rowsPerPageAlter', context: context);

  @override
  int get rowsPerPageAlter {
    _$rowsPerPageAlterAtom.reportRead();
    return super.rowsPerPageAlter;
  }

  @override
  set rowsPerPageAlter(int value) {
    _$rowsPerPageAlterAtom.reportWrite(value, super.rowsPerPageAlter, () {
      super.rowsPerPageAlter = value;
    });
  }

  late final _$isRowCountLessDefaultRowsPerPageAtom = Atom(
      name: 'AddressControllerBase.isRowCountLessDefaultRowsPerPage',
      context: context);

  @override
  bool get isRowCountLessDefaultRowsPerPage {
    _$isRowCountLessDefaultRowsPerPageAtom.reportRead();
    return super.isRowCountLessDefaultRowsPerPage;
  }

  @override
  set isRowCountLessDefaultRowsPerPage(bool value) {
    _$isRowCountLessDefaultRowsPerPageAtom
        .reportWrite(value, super.isRowCountLessDefaultRowsPerPage, () {
      super.isRowCountLessDefaultRowsPerPage = value;
    });
  }

  late final _$addressCreateTypeAtom =
      Atom(name: 'AddressControllerBase.addressCreateType', context: context);

  @override
  String get addressCreateType {
    _$addressCreateTypeAtom.reportRead();
    return super.addressCreateType;
  }

  @override
  set addressCreateType(String value) {
    _$addressCreateTypeAtom.reportWrite(value, super.addressCreateType, () {
      super.addressCreateType = value;
    });
  }

  late final _$cepAtom =
      Atom(name: 'AddressControllerBase.cep', context: context);

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  late final _$openToSelectAtom =
      Atom(name: 'AddressControllerBase.openToSelect', context: context);

  @override
  bool get openToSelect {
    _$openToSelectAtom.reportRead();
    return super.openToSelect;
  }

  @override
  set openToSelect(bool value) {
    _$openToSelectAtom.reportWrite(value, super.openToSelect, () {
      super.openToSelect = value;
    });
  }

  late final _$AddressControllerBaseActionController =
      ActionController(name: 'AddressControllerBase', context: context);

  @override
  void initializePageCount() {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.initializePageCount');
    try {
      return super.initializePageCount();
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeRowPerPage(int? value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.changeRowPerPage');
    try {
      return super.changeRowPerPage(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddressCreateType(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setAddressCreateType');
    try {
      return super.setAddressCreateType(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCep(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setCep');
    try {
      return super.setCep(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOpenToSelect() {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setOpenToSelect');
    try {
      return super.setOpenToSelect();
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addressList: ${addressList},
rowsPerPage: ${rowsPerPage},
rowsPerPageAlter: ${rowsPerPageAlter},
isRowCountLessDefaultRowsPerPage: ${isRowCountLessDefaultRowsPerPage},
addressCreateType: ${addressCreateType},
cep: ${cep},
openToSelect: ${openToSelect}
    ''';
  }
}
