// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainController on MainControllerBase, Store {
  late final _$menuClickAtom =
      Atom(name: 'MainControllerBase.menuClick', context: context);

  @override
  bool get menuClick {
    _$menuClickAtom.reportRead();
    return super.menuClick;
  }

  @override
  set menuClick(bool value) {
    _$menuClickAtom.reportWrite(value, super.menuClick, () {
      super.menuClick = value;
    });
  }

  late final _$MainControllerBaseActionController =
      ActionController(name: 'MainControllerBase', context: context);

  @override
  void setMenuClick() {
    final _$actionInfo = _$MainControllerBaseActionController.startAction(
        name: 'MainControllerBase.setMenuClick');
    try {
      return super.setMenuClick();
    } finally {
      _$MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
menuClick: ${menuClick}
    ''';
  }
}
