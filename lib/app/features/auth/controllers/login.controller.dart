import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../exceptions/login.exception.dart';
import '../repositories/login.repository.dart';

part 'login.controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginRepository _repository;

  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  @observable
  late bool obscureTextPassword = true;

  LoginControllerBase(this._repository);

  @action
  setObscureTextPassword() {
    obscureTextPassword = !obscureTextPassword;
  }

  @action
  Future<void> signIn(String email, String password) async {
    screenStatus = ScreenStatus.loading;

    try {
      await _repository.signIn(email, password);
      screenStatus = ScreenStatus.success;
    } on LoginException catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
