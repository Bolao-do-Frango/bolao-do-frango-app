import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/logo.component.dart';
import '../../../core/design/widgets/scaffold.dart';
import 'components/bottom_forget_password.component.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: CustomScaffold(
        isEnableScroll: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10.h),
                const LogoComponent.medium(),
                SizedBox(height: 15.h),
              ],
            ),
            const BottomForgetPasswordComponent(),
          ],
        ),
      ),
    );
  }
}
