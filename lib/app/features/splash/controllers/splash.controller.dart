import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/shared/firebase/datasources/firebase_auth_datasource.dart';

part 'splash.controller.g.dart';

class SplashController = SplashControllerBase with _$SplashController;

abstract class SplashControllerBase with Store {
  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  @action
  void getUser() {
    screenStatus = ScreenStatus.loading;

    final User? user = FirebaseAuthDatasource.getUser();
    if (user != null) {
      screenStatus = ScreenStatus.success;
    } else {
      screenStatus = ScreenStatus.error;
    }
  }
}
