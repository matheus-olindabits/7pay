import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'main_controller.g.dart';

class MainController = MainControllerBase with _$MainController;

abstract class MainControllerBase with Store {
  MainControllerBase();

  @observable
  bool menuClick = false;

  @action
  void setMenuClick() {
    (menuClick) ? menuClick = false : menuClick = true;
  }
}
