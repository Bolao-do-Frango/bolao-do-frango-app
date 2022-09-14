import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/shared/firebase/datasources/firebase_auth_datasource.dart';
import '../../../core/shared/firebase/exceptions/firebase_auth_exception.dart';

part 'login.controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  @observable
  late bool obscureTextPassword = true;

  @action
  setObscureTextPassword() {
    obscureTextPassword = !obscureTextPassword;
  }

  @action
  Future<void> signIn(String email, String password) async {
    screenStatus = ScreenStatus.loading;

    try {
      await FirebaseAuthDatasource.signIn(email, password);
      screenStatus = ScreenStatus.success;
    } on LoginException catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
