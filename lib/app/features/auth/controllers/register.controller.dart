import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/models/user.entity.dart';
import '../../../core/shared/firebase/datasources/firebase_auth_datasource.dart';
import '../../../core/shared/firebase/exceptions/firebase_auth_exception.dart';

part 'register.controller.g.dart';

class RegisterController = RegisterControllerBase with _$RegisterController;

abstract class RegisterControllerBase with Store {
  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  @action
  Future<void> register(UserEntity userEntity) async {
    screenStatus = ScreenStatus.loading;

    try {
      await FirebaseAuthDatasource.registerUser(
          userEntity.email, userEntity.password);
      screenStatus = ScreenStatus.success;
    } on RegisterException catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
