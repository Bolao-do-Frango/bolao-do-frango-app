import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/home.controller.dart';
import 'pages/home.page.dart';
import 'repositories/home.repository.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<HomeRepository>((_) => HomeRepository()),
        Bind.factory<HomeController>((i) => HomeController(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const HomePage(),
        ),
      ];
}
