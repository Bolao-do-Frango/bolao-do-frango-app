import 'package:flutter_modular/flutter_modular.dart';

import 'features/auth/auth_module.dart';
import 'features/home/home.module.dart';
import 'features/pool/pool.module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/pool', module: PoolModule()),
      ];
}
