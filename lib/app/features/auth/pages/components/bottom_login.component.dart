import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';
import '../../../../core/design/widgets/input_text.dart';
import '../../../../core/design/widgets/title.dart';
import '../../../../core/enums/screen_status.dart';
import '../../controllers/login.controller.dart';

class BottomLoginComponent extends StatefulWidget {
  const BottomLoginComponent({super.key});

  @override
  State<BottomLoginComponent> createState() => _BottomLoginComponentState();
}

class _BottomLoginComponentState extends State<BottomLoginComponent> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late LoginController _controller;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<LoginController>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTitle(text: 'Entrar'),
          SizedBox(height: 3.h),
          CustomInputText(
            controller: _emailController,
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: Validatorless.multiple([
              Validatorless.required(
                  'É obrigatório informar o email para realizar o login.'),
              Validatorless.email('Email inválido.')
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Observer(builder: (_) {
              return CustomInputText(
                controller: _passwordController,
                hintText: 'Senha',
                textInputType: TextInputType.visiblePassword,
                obscureText: _controller.obscureTextPassword,
                validator: Validatorless.multiple([
                  Validatorless.required(
                      'É obrigatório informar a senha para realizar o login.'),
                  Validatorless.min(
                      6, 'Sua senha deve possuir ao menos 6 caracteres.'),
                ]),
                suffixIcon: IconButton(
                  onPressed: () => _controller.setObscureTextPassword(),
                  icon: Icon(
                    _controller.obscureTextPassword == true
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
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await _controller.signIn(
                    _emailController.text,
                    _passwordController.text,
                  );

                  if (_controller.screenStatus == ScreenStatus.error) {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: TokenColors.kRed,
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          'Não foi possível realizar o login. Tente novamente!',
                        ),
                      ),
                    );
                  }

                  if (_controller.screenStatus == ScreenStatus.success) {
                    Modular.to.pushReplacementNamed('/home/');
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: TokenColors.kRed,
                      behavior: SnackBarBehavior.floating,
                      content: Text('Verifique os campos preenchidos acima!'),
                    ),
                  );
                }
              }),
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
      ),
    );
  }
}
