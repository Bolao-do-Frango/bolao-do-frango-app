import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/splash.controller.dart';
import 'pages/splash.page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<SplashController>((i) => SplashController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const SplashPage(),
        ),
      ];
}
