import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'core/design/tokens/token_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        <DeviceOrientation>[DeviceOrientation.portraitUp]);

    Modular.setInitialRoute('/auth/welcome');

    return Sizer(
      builder: (_, __, ___) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Bolão do Frango',
          theme: ThemeData(
            fontFamily: GoogleFonts.inter().fontFamily,
            textTheme: GoogleFonts.interTextTheme(),
            scaffoldBackgroundColor: TokenColors.kWhite1,
          ),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        );
      },
    );
  }
}
