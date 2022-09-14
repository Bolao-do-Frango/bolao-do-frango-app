import 'package:flutter_modular/flutter_modular.dart';

import 'features/account/account.module.dart';
import 'features/auth/auth.module.dart';
import 'features/faq/faq.module.dart';
import 'features/home/home.module.dart';
import 'features/pool/pool.module.dart';
import 'features/ranking/ranking.module.dart';
import 'features/splash/splash.module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/pool', module: PoolModule()),
        ModuleRoute('/account', module: AccountModule()),
        ModuleRoute('/ranking', module: RankingModule()),
        ModuleRoute('/faq', module: FaqModule()),
        ModuleRoute('/splash', module: SplashModule()),
      ];
}
