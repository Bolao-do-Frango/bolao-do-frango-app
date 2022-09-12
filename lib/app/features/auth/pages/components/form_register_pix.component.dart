import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';
import '../../../../core/design/widgets/card.dart';
import '../../../../core/enums/screen_status.dart';
import '../../controllers/register.controller.dart';
import 'input_with_title.component.dart';

class FormRegisterPixComponent extends StatefulWidget {
  const FormRegisterPixComponent({super.key});

  @override
  State<FormRegisterPixComponent> createState() =>
      _FormRegisterPixComponentState();
}

class _FormRegisterPixComponentState extends State<FormRegisterPixComponent> {
  final TextEditingController _keyPixController = TextEditingController();
  final TextEditingController _typeKeyPixController = TextEditingController();

  late RegisterController _controller;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        children: <Widget>[
          InputWithTitle(
            textEditingController: _keyPixController,
            text: 'Chave PIX',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar sua chave PIX.'),
            ]),
          ),
          InputWithTitle(
            textEditingController: _typeKeyPixController,
            text: 'Tipo de chave',
            validator: Validatorless.multiple([
              Validatorless.required(
                  'É obrigatório selecionar o tipo de chave PIX.'),
            ]),
          ),
          SizedBox(height: 5.h),
          CustomCard(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.info,
                    size: 20.sp,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  'Cadastre sua chave pix para receber o premio '
                  'direto em sua conta. Se não quiser cadastrar agora, '
                  'não tem problema, nós entraremos em contato '
                  'com você caso ganhe.',
                  style: TokenTextStyle.body3,
                ),
              ),
            ],
          )),
          SizedBox(height: 5.h),
          CustomButton.orange(
            text: 'Cadastrar',
            onPressed: () async {
              ScaffoldMessenger.of(context).clearSnackBars();
              if (_formKey.currentState!.validate()) {
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
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: TokenColors.kRed,
                    behavior: SnackBarBehavior.floating,
                    content: Text('Verifique os campos preenchido acima!'),
                  ),
                );
              }
            },
          ),
          SizedBox(height: 2.5.h),
          CustomButton.white(
            text: 'Pular',
            onPressed: () => Modular.to.pop(),
          ),
        ],
      ),
    );
  }
}
