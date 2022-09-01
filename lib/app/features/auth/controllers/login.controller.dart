import 'package:mobx/mobx.dart';

part 'login.controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  late bool obscureTextPassword = true;

  @action
  setObscureTextPassword() {
    obscureTextPassword = !obscureTextPassword;
  }
}
