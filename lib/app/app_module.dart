import 'package:bolao_do_frango_app/app/features/home/home.module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/auth/auth_module.dart';


class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
