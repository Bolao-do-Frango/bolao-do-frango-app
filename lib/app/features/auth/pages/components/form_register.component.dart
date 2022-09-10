import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/validators/mask.validator.dart';
import '../../../../core/design/widgets/button.dart';
import '../../../../core/enums/screen_status.dart';
import '../../../../core/models/user.entity.dart';
import '../../controllers/register.controller.dart';
import 'input_with_title.component.dart';

class FormRegisterComponent extends StatefulWidget {
  const FormRegisterComponent({super.key});

  @override
  State<FormRegisterComponent> createState() => _FormRegisterComponentState();
}

class _FormRegisterComponentState extends State<FormRegisterComponent> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cellphoneController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  late RegisterController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<RegisterController>();
  }

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
          inputFormatter: MaskValidator.cellphoneValidator,
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
          onPressed: () async {
            await _controller.register(
              UserEntity(
                name: _fullNameController.text,
                cellphone: _cellphoneController.text,
                username: _usernameController.text,
                email: _emailController.text,
                password: _passwordConfirmController.text,
              ),
            );

            if (_controller.screenStatus == ScreenStatus.error) {
              Modular.to.pushNamed(
                '/auth/register_error',
              );
            }

            if (_controller.screenStatus == ScreenStatus.success) {
              Modular.to.pushNamedAndRemoveUntil(
                '/auth/register_success',
                ModalRoute.withName('/auth/welcome'),
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
    );
  }
}
