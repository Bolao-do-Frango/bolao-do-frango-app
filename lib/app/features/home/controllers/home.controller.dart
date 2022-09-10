import 'package:mobx/mobx.dart';

import '../repositories/home.repository.dart';

part 'home.controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeRepository _repository;

  HomeControllerBase(this._repository);

  @action
  void signOut() {
    _repository.signOut();
  }
}
