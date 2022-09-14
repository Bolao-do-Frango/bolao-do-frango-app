import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../repositories/splash.repository.dart';

part 'splash.controller.g.dart';

class SplashController = SplashControllerBase with _$SplashController;

abstract class SplashControllerBase with Store {
  final SplashRepository _repository;

  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  SplashControllerBase(this._repository);

  @action
  void getUser() {
    screenStatus = ScreenStatus.loading;

    final User? user = _repository.getUser();
    if (user == null) {
      screenStatus = ScreenStatus.error;
    } else {
      screenStatus = ScreenStatus.success;
    }
  }
}
