import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_colors.dart';
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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late RegisterController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<RegisterController>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputWithTitle(
            textEditingController: _fullNameController,
            text: 'Nome Completo',
            textInputType: TextInputType.name,
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
            textInputType: TextInputType.phone,
            inputFormatter: MaskValidator.cellphoneValidator,
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar seu celular.'),
              Validatorless.min(16, 'Número de celular incorreto.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _usernameController,
            text: 'Username',
            textInputType: TextInputType.name,
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
            textInputType: TextInputType.emailAddress,
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar seu email.'),
              Validatorless.email('Email inválido.')
            ]),
          ),
          InputWithTitle(
            textEditingController: _passwordController,
            text: 'Senha',
            textInputType: TextInputType.visiblePassword,
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório definir sua senha.'),
              Validatorless.min(
                  6, 'Sua senha deve possuir ao menos 6 caracteres.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _passwordConfirmController,
            text: 'Confirmar senha',
            textInputType: TextInputType.visiblePassword,
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
                await _controller.register(
                  UserEntity(
                    name: _fullNameController.text,
                    cellphone: _cellphoneController.text,
                    username: _usernameController.text,
                    email: _emailController.text,
                    password: _passwordConfirmController.text,
                  ),
                );

                if (_controller.screenStatus == ScreenStatus.success) {
                  Modular.to.pushReplacementNamed('/auth/register_pix');
                  _controller.changeScreenStatus(ScreenStatus.idle);
                }

                if (_controller.screenStatus == ScreenStatus.error) {
                  Modular.to.pushNamed('/auth/register_error');
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
