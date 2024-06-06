import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:test_7pay/app/modules/main/shared/enum/item_sidebar_selected_enum.dart';
import 'package:test_7pay/app/router.dart';

part 'main_controller.g.dart';

class MainController = MainControllerBase with _$MainController;

abstract class MainControllerBase with Store {
  MainControllerBase();

  @observable
  bool menuClick = false;

  @observable
  String itemSidebarSelected = ItemSidebarSelected.dashboard.name;

  @action
  void setMenuClick() {
    (menuClick) ? menuClick = false : menuClick = true;
  }

  @action
  setItemSidebarSelectedAnfGoToRouter(String item) async {
    if (item == ItemSidebarSelected.dashboard.name) {
      itemSidebarSelected = ItemSidebarSelected.dashboard.name;
      Modular.to.navigate(RouterApp.dashboard);
    } else if (item == ItemSidebarSelected.address.name) {
      itemSidebarSelected = ItemSidebarSelected.address.name;
      Modular.to.navigate(RouterApp.dashboard);
    }
  }
}
