import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/logo.component.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../../../core/design/widgets/title.dart';
import 'components/form_register_pix.component.dart';

class RegisterPixPage extends StatelessWidget {
  const RegisterPixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: CustomScaffold(
        isEnableScroll: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5.h),
            const LogoComponent.small(),
            SizedBox(height: 5.h),
            const CustomTitle(text: 'Cadastre-se'),
            const FormRegisterPixComponent(),
          ],
        ),
      ),
    );
  }
}
