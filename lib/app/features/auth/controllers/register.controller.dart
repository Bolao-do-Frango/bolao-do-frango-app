import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/models/user.entity.dart';
import '../exceptions/register.exception.dart';
import '../repositories/register.repository.dart';

part 'register.controller.g.dart';

class RegisterController = RegisterControllerBase with _$RegisterController;

abstract class RegisterControllerBase with Store {
  final RegisterRepository _repository;

  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  RegisterControllerBase(this._repository);

  @action
  Future<void> register(UserEntity userEntity) async {
    screenStatus = ScreenStatus.loading;

    try {
      await _repository.registerUser(userEntity.email, userEntity.password);
      screenStatus = ScreenStatus.success;
    } on RegisterException catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
