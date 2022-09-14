import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';
import '../../../../core/design/widgets/card.dart';
import '../../../../core/design/widgets/dropdown.dart';
import '../../../../core/enums/screen_status.dart';
import '../../../../core/models/pix.entity.dart';
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

  late final String _dropdownValue = '';
  final List<String> _dropdownItems = [
    'Celular',
    'CPF/CNPJ',
    'E-mail',
    'Chave aleatória',
  ];
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 3.h),
          Text(
            'Tipo de chave',
            style: TokenTextStyle.heading5,
          ),
          SizedBox(height: 1.h),
          CustomDropdown(
            hint: 'Tipo de chave',
            dropdownItems: _dropdownItems,
            dropdownValue: _dropdownValue,
            onChanged: (value) {},
            validator: Validatorless.required(
                'É obrigatório informar o tipo da chave PIX.'),
          ),
          InputWithTitle(
            textEditingController: _keyPixController,
            text: 'Qual sua chave pix',
            validator: Validatorless.multiple([
              Validatorless.required('É obrigatório informar sua chave PIX.'),
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
                await _controller.registerPix(PixEntity(
                  typeKey: _dropdownValue,
                  key: _keyPixController.text,
                ));

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
                    content: Text('Verifique os campos preenchidos acima!'),
                  ),
                );
              }
            },
          ),
          SizedBox(height: 2.5.h),
          CustomButton.white(
              text: 'Pular',
              onPressed: () => Modular.to.pushNamedAndRemoveUntil(
                    '/auth/register_success',
                    ModalRoute.withName('/auth/welcome'),
                  )),
        ],
      ),
    );
  }
}
