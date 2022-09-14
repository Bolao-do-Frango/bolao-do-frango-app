import 'package:bolao_do_frango_app/app/core/design/widgets/button.dart';
import 'package:bolao_do_frango_app/app/core/design/widgets/input_text.dart';
import 'package:bolao_do_frango_app/app/features/auth/controllers/forget_password.controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/title.dart';

class BottomForgetPasswordComponent extends StatefulWidget {
  const BottomForgetPasswordComponent({super.key});

  @override
  State<BottomForgetPasswordComponent> createState() =>
      _BottomForgetPasswordComponentState();
}

class _BottomForgetPasswordComponentState
    extends State<BottomForgetPasswordComponent> {
  final TextEditingController _emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late ForgetPasswordController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<ForgetPasswordController>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            validator: Validatorless.multiple([
              Validatorless.required(
                  'É obrigatório informar o email para recuperar a senha.'),
              Validatorless.email('Email inválido.')
            ]),
          ),
          SizedBox(height: 5.h),
          CustomButton.orange(
            text: 'Enviar nova senha',
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                await _controller.resetPassword(_emailController.text);
              }
            },
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
      ),
    );
  }
}
