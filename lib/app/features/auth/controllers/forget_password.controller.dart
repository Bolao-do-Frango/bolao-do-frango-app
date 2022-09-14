import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/shared/firebase/datasources/firebase_auth_datasource.dart';
import '../../../core/shared/firebase/exceptions/firebase_auth_exception.dart';

part 'forget_password.controller.g.dart';

class ForgetPasswordController = ForgetPasswordControllerBase
    with _$ForgetPasswordController;

abstract class ForgetPasswordControllerBase with Store {
  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  @action
  Future<void> resetPassword(String email) async {
    screenStatus = ScreenStatus.loading;

    try {
      await FirebaseAuthDatasource.sendNewPassword(email);
      screenStatus = ScreenStatus.success;
    } on SendNewPasswordException catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
