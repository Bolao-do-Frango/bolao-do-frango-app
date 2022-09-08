import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/ranking.controller.dart';
import 'pages/details.page.dart';
import 'pages/ranking.page.dart';
import 'repositories/ranking.repository.dart';

class RankingModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<RankingRepository>((i) => RankingRepository()),
        Bind.factory<RankingController>((i) => RankingController(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const RankingPage(),
        ),
        ChildRoute(
          '/details',
          child: (_, args) => DetailsPage(username: args.data),
        ),
      ];
}
