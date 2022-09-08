import 'package:mobx/mobx.dart';

part 'intro.controller.g.dart';

class IntroController = IntroControllerBase with _$IntroController;

abstract class IntroControllerBase with Store {
  @observable
  late double page = 0;

  @action
  void nextPage() {
    page += 1;
  }

  @action
  void backPage() {
    page -= 1;
  }
}
