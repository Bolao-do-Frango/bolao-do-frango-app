import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/splash.controller.dart';
import 'pages/splash.page.dart';
import 'repositories/splash.repository.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<SplashRepository>((i) => SplashRepository()),
        Bind.factory<SplashController>((i) => SplashController(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const SplashPage(),
        ),
      ];
}
