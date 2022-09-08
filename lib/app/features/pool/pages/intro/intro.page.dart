import 'components/intro.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../controllers/intro.controller.dart';

class IntroPage extends StatelessWidget {
  IntroPage({
    super.key,
    required this.isPlayoff,
  });

  final IntroController controller = Modular.get<IntroController>();
  final bool isPlayoff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (controller.page == 0 && isPlayoff) {
            return IntroComponent(
              image:
                  'assets/images/silhouette-of-a-man-playing-soccer-in-golden-hour-sunset.png',
              onPressBack: () => Modular.to.pop(),
              page: controller.page,
              title: 'Bolão eliminatórias',
              subtitle: 'Faça sua aposta para a fase eliminatória '
                  'e participe de um novo bolão!',
              onPressButton: () {
                controller.nextPage();
              },
            );
          }
          if (controller.page == 0) {
            return IntroComponent(
              image: 'assets/images/winning-trophy-football.png',
              onPressBack: () => Modular.to.pop(),
              page: controller.page,
              title: 'Bolão do Frango',
              subtitle: 'Preencha suas apostas para a copa, '
                  'desde as fases de grupo até a final.',
              onPressButton: () {
                controller.nextPage();
              },
            );
          }
          if (controller.page == 1) {
            return IntroComponent(
              image: 'assets/images/soccer-into-goal-success-concept.png',
              onPressBack: () => controller.backPage(),
              page: controller.page,
              title: 'Pague com Pix',
              subtitle: 'O valor é fixo de R\$ 20,00 que '
                  'deverá ser pago através do Pix.',
              onPressButton: () {
                controller.nextPage();
              },
            );
          }
          if (controller.page == 2) {
            return IntroComponent(
              image:
                  'assets/images/soccer-players-in-action-on-professional-stadium.png',
              onPressBack: () => controller.backPage(),
              page: controller.page,
              title: 'Receba com Pix',
              subtitle: 'Cadastre a chave pix que deseja '
                  'receber caso ganhe o bolão.',
              onPressButton: () {},
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
