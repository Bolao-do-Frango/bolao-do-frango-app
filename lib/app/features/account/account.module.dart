import 'package:flutter_modular/flutter_modular.dart';

import 'pages/details.page.dart';
import 'pages/edit.page.dart';
import 'pages/edit_password.page.dart';

class AccountModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/details',
          child: (_, __) => const DetailsPage(),
        ),
        ChildRoute(
          '/edit',
          child: (_, __) => EditPage(),
        ),
        ChildRoute(
          '/edit-password',
          child: (_, __) => EditPasswordPage(),
        ),
      ];
}
