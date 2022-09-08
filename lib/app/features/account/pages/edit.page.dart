import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_colors.dart';
import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/button.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../../auth/pages/components/input_with_title.component.dart';
import '../../../core/design/widgets/app_bar.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cellphoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isEnableScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomAppBar(title: 'Daniel245'),
          SizedBox(height: 2.h),
          Text(
            'Informações da conta',
            style: TokenTextStyle.heading8,
          ),
          SizedBox(height: 1.h),
          InputWithTitle(
            textEditingController: _emailController,
            text: 'Email',
            enabled: false,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.edit,
                color: TokenColors.kBlack2,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 1.h),
          InputWithTitle(
            textEditingController: _passwordController,
            text: 'Senha',
            // enabled: false,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.edit,
                color: TokenColors.kBlack2,
              ),
              onPressed: () => Modular.to.pushNamed('/account/edit-password'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: const Divider(),
          ),
          InputWithTitle(
            textEditingController: _usernameController,
            text: 'Username',
            enabled: false,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.edit,
                color: TokenColors.kBlack2,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 1.h),
          InputWithTitle(
            textEditingController: _fullNameController,
            text: 'Nome Completo',
            enabled: false,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.edit,
                color: TokenColors.kBlack2,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 1.h),
          InputWithTitle(
            textEditingController: _cellphoneController,
            text: 'Celular',
            enabled: false,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.edit,
                color: TokenColors.kBlack2,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 5.h),
          CustomButton.orange(
            text: 'Salvar',
            onPressed: () {},
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
