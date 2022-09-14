import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/login.controller.dart';
import 'controllers/register.controller.dart';
import 'pages/forget_password.page.dart';
import 'pages/login.page.dart';
import 'pages/register.page.dart';
import 'pages/register_error.page.dart';
import 'pages/register_pix.page.dart';
import 'pages/register_success.page.dart';
import 'pages/welcome.page.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<LoginController>((i) => LoginController()),
        Bind.factory<RegisterController>((i) => RegisterController()),
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
          '/register_pix',
          child: (_, __) => const RegisterPixPage(),
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
