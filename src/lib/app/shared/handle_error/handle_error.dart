import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_7pay/app/router.dart';
import 'package:test_7pay/app/shared/enum/exception_error_enum.dart';
import 'package:test_7pay/app/shared/snackbar/snackbar_message.dart';

class HandleError {
  static Future<void> errorRequest(
      {required dynamic error, String? descriptionError}) async {
    try {
      if (error != null) {
        if (error.response.data != null) {
          if (error.response.statusCode == 400 ||
              (error.response.statusCode != 401 &&
                  error.response.statusCode != 500)) {
            SnackBarMessage.notification(
                descriptionError ?? ExceptionError.defaultError.name);
          } else {
            Modular.to.navigate(RouterApp.dashboard);
          }
        } else {
          Modular.to.navigate(RouterApp.dashboard);
        }
      } else {
        SnackBarMessage.notification(ExceptionError.defaultError.name);
      }
    } catch (e) {
      SnackBarMessage.notification(ExceptionError.defaultError.name);
    }
  }
}
