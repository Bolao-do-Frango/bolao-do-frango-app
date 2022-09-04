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
          controller.setIsPlayoff(isPlayoff);
          return IntroComponent(
            image: 'assets/images/${controller.image}.png',
            onPressBack: controller.page == 0
                ? () => Modular.to.pop()
                : () {
                    controller.backPage();
                    _buildScreenElements();
                  },
            page: controller.page,
            title: controller.title,
            subtitle: controller.subtitle,
            onPressButton: controller.page == 2
                ? () {}
                : () {
                    controller.nextPage();
                    _buildScreenElements();
                  },
          );
        },
      ),
    );
  }

  void _buildScreenElements() {
    controller.buildImage();
    controller.buildTitle();
    controller.buildSubtitle();
  }
}
