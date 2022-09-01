import 'package:bolao_do_frango_app/app/core/design/widgets/button.dart';
import 'package:bolao_do_frango_app/app/core/design/widgets/input_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/title.dart';

class BottomForgetPasswordComponent extends StatelessWidget {
  BottomForgetPasswordComponent({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomTitle(text: 'Esqueceu a senha?'),
        SizedBox(height: 3.h),
        Text(
          'Não se preocupe, nós enviamos uma nova senha para seu e-mail!',
          style: TokenTextStyle.subtitleM,
        ),
        SizedBox(height: 3.h),
        CustomInputText(
          controller: _emailController,
          hintText: 'Email',
        ),
        SizedBox(height: 5.h),
        CustomButton.orange(
          text: 'Enviar nova senha',
          onPressed: () {},
        ),
        SizedBox(height: 2.5.h),
        Center(
          child: RichText(
            text: TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: 'Sabe sua senha? ',
                  style: TokenTextStyle.body1,
                ),
                TextSpan(
                  text: 'Entrar',
                  style: TokenTextStyle.action,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Modular.to.navigate('/auth/login'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
