import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/intro.controller.dart';
import 'pages/intro/intro.page.dart';

class PoolModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<IntroController>((i) => IntroController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/intro/',
          child: (_, args) => IntroPage(isPlayoff: args.data),
        ),
      ];
}
