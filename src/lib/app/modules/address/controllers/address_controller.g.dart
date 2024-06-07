// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddressController on AddressControllerBase, Store {
  Computed<List<Address>>? _$addressListFilteredComputed;

  @override
  List<Address> get addressListFiltered => (_$addressListFilteredComputed ??=
          Computed<List<Address>>(() => super.addressListFiltered,
              name: 'AddressControllerBase.addressListFiltered'))
      .value;

  late final _$addressListToSelectAtom =
      Atom(name: 'AddressControllerBase.addressListToSelect', context: context);

  @override
  List<Address> get addressListToSelect {
    _$addressListToSelectAtom.reportRead();
    return super.addressListToSelect;
  }

  @override
  set addressListToSelect(List<Address> value) {
    _$addressListToSelectAtom.reportWrite(value, super.addressListToSelect, () {
      super.addressListToSelect = value;
    });
  }

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

  late final _$streetAtom =
      Atom(name: 'AddressControllerBase.street', context: context);

  @override
  String get street {
    _$streetAtom.reportRead();
    return super.street;
  }

  @override
  set street(String value) {
    _$streetAtom.reportWrite(value, super.street, () {
      super.street = value;
    });
  }

  late final _$cityAtom =
      Atom(name: 'AddressControllerBase.city', context: context);

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$ufAtom =
      Atom(name: 'AddressControllerBase.uf', context: context);

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'AddressControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
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

  late final _$filterAtom =
      Atom(name: 'AddressControllerBase.filter', context: context);

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  late final _$ufFilterAtom =
      Atom(name: 'AddressControllerBase.ufFilter', context: context);

  @override
  String get ufFilter {
    _$ufFilterAtom.reportRead();
    return super.ufFilter;
  }

  @override
  set ufFilter(String value) {
    _$ufFilterAtom.reportWrite(value, super.ufFilter, () {
      super.ufFilter = value;
    });
  }

  late final _$listAddressAsyncAction =
      AsyncAction('AddressControllerBase.listAddress', context: context);

  @override
  Future<void> listAddress() {
    return _$listAddressAsyncAction.run(() => super.listAddress());
  }

  late final _$AddressControllerBaseActionController =
      ActionController(name: 'AddressControllerBase', context: context);

  @override
  void initializePaginatedDataTable() {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.initializePaginatedDataTable');
    try {
      return super.initializePaginatedDataTable();
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
  void setStreet(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setStreet');
    try {
      return super.setStreet(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUf(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setUf');
    try {
      return super.setUf(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCity(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilter(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUfFilter(String value) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setUfFilter');
    try {
      return super.setUfFilter(value);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAttributesToCreate() {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.setAttributesToCreate');
    try {
      return super.setAttributesToCreate();
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAddress(Address address) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.addAddress');
    try {
      return super.addAddress(address);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAddress(int index) {
    final _$actionInfo = _$AddressControllerBaseActionController.startAction(
        name: 'AddressControllerBase.removeAddress');
    try {
      return super.removeAddress(index);
    } finally {
      _$AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addressListToSelect: ${addressListToSelect},
addressList: ${addressList},
rowsPerPage: ${rowsPerPage},
rowsPerPageAlter: ${rowsPerPageAlter},
isRowCountLessDefaultRowsPerPage: ${isRowCountLessDefaultRowsPerPage},
addressCreateType: ${addressCreateType},
cep: ${cep},
street: ${street},
city: ${city},
uf: ${uf},
loading: ${loading},
openToSelect: ${openToSelect},
filter: ${filter},
ufFilter: ${ufFilter},
addressListFiltered: ${addressListFiltered}
    ''';
  }
}
