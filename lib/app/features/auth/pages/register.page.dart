import 'package:bolao_do_frango_app/app/features/auth/pages/components/form_register.component.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_text_style.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 3.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5.h),
                  Center(
                    child: Image.asset(
                      'assets/images/home.png',
                      width: 30.w,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  RichText(
                    text: TextSpan(
                      text: 'Cadastre-se',
                      style: TokenTextStyle.heading1,
                    ),
                  ),
                  FormRegisterComponent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}