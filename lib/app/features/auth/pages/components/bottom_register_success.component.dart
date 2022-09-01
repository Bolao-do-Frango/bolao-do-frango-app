import 'package:bolao_do_frango_app/app/core/design/tokens/token_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';

class BottomRegisterSuccessComponent extends StatelessWidget {
  const BottomRegisterSuccessComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: 'Cadastro realizado',
                style: TokenTextStyle.heading1,
              ),
              WidgetSpan(
                child: SizedBox(
                  width: 2.w,
                ),
              ),
              WidgetSpan(
                child: Icon(
                  Icons.check,
                  color: TokenColors.kGreen,
                  size: 24.sp,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          'Volte até a tela de login para entrar em sua conta!',
          style: TokenTextStyle.subtitleM,
        ),
        SizedBox(height: 5.h),
        CustomButton.orange(
          text: 'Entrar',
          onPressed: () => Modular.to.pushReplacementNamed('/auth/login'),
        ),
        SizedBox(height: 6.h),
      ],
    );
  }
}
