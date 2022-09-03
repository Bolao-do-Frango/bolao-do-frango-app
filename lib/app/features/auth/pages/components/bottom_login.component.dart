import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';
import '../../../../core/design/widgets/input_text.dart';
import '../../../../core/design/widgets/title.dart';
import '../../controllers/login.controller.dart';

class BottomLoginComponent extends StatelessWidget {
  BottomLoginComponent({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final LoginController controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomTitle(text: 'Entrar'),
        SizedBox(height: 3.h),
        CustomInputText(controller: _emailController, hintText: 'Email'),
        Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: Observer(builder: (_) {
            return CustomInputText(
              controller: _passwordController,
              hintText: 'Senha',
              obscureText: controller.obscureTextPassword,
              suffixIcon: IconButton(
                onPressed: () => controller.setObscureTextPassword(),
                icon: Icon(
                  controller.obscureTextPassword == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: TokenColors.kBlack2,
                ),
              ),
            );
          }),
        ),
        TextButton(
          onPressed: () => Modular.to.pushNamed('/auth/forget_password'),
          child: Text(
            'Esqueceu a senha?',
            style: TokenTextStyle.action,
          ),
        ),
        SizedBox(height: 5.h),
        CustomButton.orange(
          text: 'Login',
          onPressed: () => Modular.to.pushReplacementNamed('/home/'),
        ),
        SizedBox(height: 2.5.h),
        Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 12.sp),
              children: <InlineSpan>[
                TextSpan(
                  text: 'Não tem cadastro? ',
                  style: TokenTextStyle.body1,
                ),
                TextSpan(
                  text: 'Cadastre-se',
                  style: TokenTextStyle.action,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Modular.to.pushNamed('/auth/register'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
