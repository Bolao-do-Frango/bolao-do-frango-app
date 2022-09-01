import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';

class BottomWelcomeComponent extends StatelessWidget {
  const BottomWelcomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'Bolão do Frango',
            style: TokenTextStyle.heading1,
          ),
        ),
        SizedBox(height: 3.h),
        Text(
            'Lorem ipsum dolor sit amet consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt.',
            style: TokenTextStyle.subtitleM),
        SizedBox(height: 5.h),
        CustomButton.orange(
            text: 'Cadastre-se',
            onPressed: () => Modular.to.pushNamed('/auth/register')),
        SizedBox(height: 2.5.h),
        Center(
          child: RichText(
            text: TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: 'Já tem cadastro? ',
                  style: TokenTextStyle.body1,
                ),
                TextSpan(
                  text: 'Entrar',
                  style: TokenTextStyle.action,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Modular.to.pushNamed('/auth/login'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
