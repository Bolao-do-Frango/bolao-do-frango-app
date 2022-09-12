import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/logo.component.dart';
import '../../../core/design/widgets/scaffold.dart';
import 'components/bottom_register_error.component.dart';

class RegisterErrorPage extends StatelessWidget {
  const RegisterErrorPage({Key? key}) : super(key: key);

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
              const LogoComponent.large(),
            ],
          ),
          const BottomRegisterErrorComponent(),
        ],
      ),
    );
  }
}
