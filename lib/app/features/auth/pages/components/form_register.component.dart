import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWithTitle(
          textEditingController: _fullNameController,
          text: 'Nome Completo',
        ),
        InputWithTitle(
          textEditingController: _cellphoneController,
          text: 'Celular',
        ),
        InputWithTitle(
          textEditingController: _usernameController,
          text: 'Username',
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: const Divider(),
        ),
        InputWithTitle(
          textEditingController: _emailController,
          text: 'Email',
        ),
        InputWithTitle(
          textEditingController: _passwordController,
          text: 'Senha',
        ),
        InputWithTitle(
          textEditingController: _passwordConfirmController,
          text: 'Confirmar senha',
        ),
        SizedBox(height: 5.h),
        CustomButton.orange(
          text: 'Cadastrar',
          onPressed: () => Modular.to.pushNamedAndRemoveUntil(
            '/auth/register_success',
            ModalRoute.withName('/auth/welcome'),
          ),
        ),
        SizedBox(height: 2.5.h),
        CustomButton.white(
          text: 'Cancelar',
          onPressed: () => Modular.to.pop(),
        ),
      ],
    );
  }
}
