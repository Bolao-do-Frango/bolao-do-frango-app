import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';

class BottomRegisterErrorComponent extends StatelessWidget {
  const BottomRegisterErrorComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: 'Falha ao tentar cadastrar',
                style: TokenTextStyle.heading1,
              ),
              WidgetSpan(
                child: SizedBox(
                  width: 2.w,
                ),
              ),
              WidgetSpan(
                child: Icon(
                  Icons.close,
                  color: TokenColors.kRed,
                  size: 24.sp,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          'Por favor, tente realizar o cadastro novamente.',
          style: TokenTextStyle.subtitleM,
        ),
        SizedBox(height: 5.h),
        CustomButton.orange(
          text: 'Cadastre-se',
          onPressed: () => Modular.to.pushReplacementNamed('/auth/register'),
        ),
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
                    ..onTap = () => Modular.to.pushReplacementNamed('/auth/login'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
