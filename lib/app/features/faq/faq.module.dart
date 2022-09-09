import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/faq.controller.dart';
import 'pages/faq.page.dart';

class FaqModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<FaqController>((i) => FaqController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const FaqPage(),
        ),
      ];
}
