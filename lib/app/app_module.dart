import 'package:flutter_modular/flutter_modular.dart';

import 'features/pool/pool.module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/pool', module: PoolModule()),
      ];
}
