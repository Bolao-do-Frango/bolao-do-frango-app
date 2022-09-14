import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/validators/mask.validator.dart';
import '../../../../core/design/widgets/button.dart';
import 'input_with_title.component.dart';

class FormRegisterComponent extends StatelessWidget {
  FormRegisterComponent({super.key});

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cellphoneController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputWithTitle(
            textEditingController: _fullNameController,
            text: 'Nome Completo',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar seu nome.'),
              Validatorless.min(
                  3, 'O nome precisa ter pelo menos 3 caracteres.'),
              Validatorless.max(30, 'O nome pode ter no máximo 30 caracteres.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _cellphoneController,
            text: 'Celular',
            inputFormatter: MaskValidator.cellphoneValidator,
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar seu celular.'),
              Validatorless.min(16, 'Número de celular incorreto.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _usernameController,
            text: 'Username',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório definir seu username.'),
              Validatorless.min(
                  3, 'Seu username precisa ter pelo menos 3 caracteres.'),
              Validatorless.max(
                  30, 'Seu username pode ter no máximo 30 caracteres.'),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: const Divider(),
          ),
          InputWithTitle(
            textEditingController: _emailController,
            text: 'Email',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar seu email.'),
              Validatorless.email('Email inválido.')
            ]),
          ),
          InputWithTitle(
            textEditingController: _passwordController,
            text: 'Senha',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório definir sua senha.'),
              Validatorless.min(
                  6, 'Sua senha deve possuir ao menos 6 caracteres.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _passwordConfirmController,
            text: 'Confirmar senha',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório confirmar sua senha.'),
              Validatorless.min(
                  6, 'Sua senha deve possuir ao menos 6 caracteres.'),
              Validatorless.compare(
                _passwordController,
                'Sua senha está diferente da informada anteriormente.',
              ),
            ]),
          ),
          SizedBox(height: 5.h),
          CustomButton.orange(
            text: 'Próximo',
            onPressed: () async {
              ScaffoldMessenger.of(context).clearSnackBars();
              if (_formKey.currentState!.validate()) {
                Modular.to.pushNamed('/auth/register_pix');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: TokenColors.kRed,
                    behavior: SnackBarBehavior.floating,
                    content: Text('Verifique os campos preenchidos acima!'),
                  ),
                );
              }
            },
          ),
          SizedBox(height: 2.5.h),
          CustomButton.white(
            text: 'Cancelar',
            onPressed: () => Modular.to.pop(),
          ),
        ],
      ),
    );
  }
}
