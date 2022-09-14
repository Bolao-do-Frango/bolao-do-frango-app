import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/logo.component.dart';
import '../../../core/design/widgets/scaffold.dart';
import 'components/bottom_welcome.component.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10.h),
              const Hero(
                tag: 'logo',
                child: LogoComponent.large(),
              ),
            ],
          ),
          const BottomWelcomeComponent(),
        ],
      ),
    );
  }
}
