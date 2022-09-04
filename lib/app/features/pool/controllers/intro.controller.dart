import 'package:mobx/mobx.dart';

part 'intro.controller.g.dart';

class IntroController = IntroControllerBase with _$IntroController;

abstract class IntroControllerBase with Store {
  @observable
  late bool isPlayoff = false;

  @observable
  late double page = 0;

  @observable
  late String image = isPlayoff
      ? 'silhouette-of-a-man-playing-soccer-in-golden-hour-sunset'
      : 'winning-trophy-football';

  @observable
  late String title = isPlayoff ? 'Bolão eliminatórias' : 'Bolão do Frango';

  @observable
  late String subtitle = isPlayoff
      ? 'Faça sua aposta para a fase eliminatória '
          'e participe de um novo bolão!'
      : 'Preencha suas apostas para a copa, '
          'desde as fases de grupo até a final.';

  @action
  void setIsPlayoff(bool value) {
    isPlayoff = value;
  }

  @action
  void nextPage() {
    page += 1;
  }

  @action
  void backPage() {
    page -= 1;
  }

  @action
  void buildImage() {
    if (page == 0) {
      image = isPlayoff
          ? 'silhouette-of-a-man-playing-soccer-in-golden-hour-sunset'
          : 'winning-trophy-football';
    } else if (page == 1) {
      image = 'soccer-into-goal-success-concept';
    } else {
      image = 'soccer-players-in-action-on-professional-stadium';
    }
  }

  @action
  void buildTitle() {
    if (page == 0) {
      title = isPlayoff ? 'Bolão eliminatórias' : 'Bolão do Frango';
    } else if (page == 1) {
      title = 'Pague com Pix';
    } else {
      title = 'Receba com Pix';
    }
  }

  @action
  void buildSubtitle() {
    if (page == 0) {
      subtitle = isPlayoff
          ? 'Faça sua aposta para a fase eliminatória '
              'e participe de um novo bolão!'
          : 'Preencha suas apostas para a copa, '
              'desde as fases de grupo até a final.';
    } else if (page == 1) {
      subtitle = 'O valor é fixo de R\$ 20,00 que '
          'deverá ser pago através do Pix.';
    } else {
      subtitle = 'Cadastre a chave pix que deseja '
          'receber caso ganhe o bolão.';
    }
  }
}
