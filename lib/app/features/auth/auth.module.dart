import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/login.controller.dart';
import 'controllers/register.controller.dart';
import 'pages/forget_password.page.dart';
import 'pages/login.page.dart';
import 'pages/register.page.dart';
import 'pages/register_error.page.dart';
import 'pages/register_success.page.dart';
import 'pages/welcome.page.dart';
import 'repositories/login.repository.dart';
import 'repositories/register.repository.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<LoginRepository>((i) => LoginRepository()),
        Bind.factory<RegisterRepository>((i) => RegisterRepository()),
        Bind.factory<LoginController>((i) => LoginController(i.get())),
        Bind.factory<RegisterController>((i) => RegisterController(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/welcome',
          child: (_, __) => const WelcomePage(),
        ),
        ChildRoute(
          '/login',
          child: (_, __) => const LoginPage(),
        ),
        ChildRoute(
          '/forget_password',
          child: (_, __) => const ForgetPasswordPage(),
        ),
        ChildRoute(
          '/register',
          child: (_, __) => const RegisterPage(),
        ),
        ChildRoute(
          '/register_success',
          child: (_, __) => const RegisterSuccessPage(),
        ),
        ChildRoute(
          '/register_error',
          child: (_, __) => const RegisterErrorPage(),
        ),
      ];
}
