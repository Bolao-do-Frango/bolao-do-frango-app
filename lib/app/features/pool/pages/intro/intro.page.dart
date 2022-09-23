import 'components/intro.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../controllers/intro.controller.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({
    super.key,
    required this.isPlayoff,
  });

  final bool isPlayoff;

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late IntroController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<IntroController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (_controller.page == 0 && widget.isPlayoff) {
            return IntroComponent(
              image:
                  'assets/images/silhouette-of-a-man-playing-soccer-in-golden-hour-sunset.png',
              onPressBack: () => Modular.to.pop(),
              page: _controller.page,
              title: 'Bolão eliminatórias',
              subtitle: 'Faça sua aposta para a fase eliminatória '
                  'e participe de um novo bolão!',
              onPressButton: () {
                _controller.nextPage();
              },
            );
          }
          if (_controller.page == 0) {
            return IntroComponent(
              image: 'assets/images/winning-trophy-football.png',
              onPressBack: () => Modular.to.pop(),
              page: _controller.page,
              title: 'Bolão do Frango',
              subtitle: 'Preencha suas apostas para a copa, '
                  'desde as fases de grupo até a final.',
              onPressButton: () {
                _controller.nextPage();
              },
            );
          }
          if (_controller.page == 1) {
            return IntroComponent(
              image: 'assets/images/soccer-into-goal-success-concept.png',
              onPressBack: () => _controller.backPage(),
              page: _controller.page,
              title: 'Pague com Pix',
              subtitle: 'O valor é fixo de R\$ 20,00 que '
                  'deverá ser pago através do Pix.',
              onPressButton: () {
                _controller.nextPage();
              },
            );
          }
          if (_controller.page == 2) {
            return IntroComponent(
              image:
                  'assets/images/soccer-players-in-action-on-professional-stadium.png',
              onPressBack: () => _controller.backPage(),
              page: _controller.page,
              title: 'Receba com Pix',
              subtitle: 'Cadastre a chave pix que deseja '
                  'receber caso ganhe o bolão.',
              onPressButton: () => Modular.to.pushNamedAndRemoveUntil(
                '/pool/bet',
                ModalRoute.withName('/home/'),
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
