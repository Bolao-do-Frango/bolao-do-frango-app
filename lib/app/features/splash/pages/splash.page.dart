import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/logo.component.dart';
import '../../../core/design/tokens/token_colors.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../../../core/enums/screen_status.dart';
import '../controllers/splash.controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<SplashController>();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      if (_controller.screenStatus == ScreenStatus.success) {
        Modular.to.pushReplacementNamed('/home/');
      } else {
        Modular.to.pushReplacementNamed('/auth/welcome');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Hero(
            tag: 'logo',
            child: LogoComponent.large(),
          ),
          SizedBox(height: 5.h),
          const CircularProgressIndicator.adaptive(
            backgroundColor: TokenColors.kLightOrange,
            valueColor: AlwaysStoppedAnimation<Color>(TokenColors.kOrange),
          ),
        ],
      ),
    );
  }
}
