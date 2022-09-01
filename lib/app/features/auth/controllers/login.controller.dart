import 'package:mobx/mobx.dart';

part 'login.controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  late bool obscureTextPassword = true;

  @action
  setObscureTextPassword() {
    obscureTextPassword = !obscureTextPassword;
  }
}
