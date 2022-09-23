import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/bet.controller.dart';
import 'controllers/intro.controller.dart';
import 'pages/bet/bet.page.dart';
import 'pages/intro/intro.page.dart';
import 'repositories/bet.repository.dart';

class PoolModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<BetRepository>((_) => BetRepository()),
        Bind.factory<BetController>((i) => BetController(i.get())),
        Bind.factory<IntroController>((_) => IntroController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/intro',
          child: (_, args) => IntroPage(isPlayoff: args.data),
        ),
        ChildRoute(
          '/bet',
          child: (_, args) => const BetPage(),
        ),
      ];
}
