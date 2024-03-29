import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_colors.dart';
import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/app_bar.dart';
import '../../../core/design/widgets/button.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../../auth/pages/components/input_with_title.component.dart';

class EditPasswordPage extends StatelessWidget {
  EditPasswordPage({super.key});

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomAppBar(title: 'Daniel245'),
              SizedBox(height: 2.h),
              Text(
                'Mudar senha',
                style: TokenTextStyle.heading8,
              ),
              SizedBox(height: 1.h),
              InputWithTitle(
                textEditingController: _passwordController,
                text: 'Senha atual',
              ),
              SizedBox(height: 1.h),
              InputWithTitle(
                textEditingController: _newPasswordController,
                text: 'Nova senha',
              ),
              SizedBox(height: 1.h),
              InputWithTitle(
                textEditingController: _confirmNewPasswordController,
                text: 'Confirme nova senha',
              ),
            ],
          ),
          Column(
            children: <Widget>[
              CustomButton.orange(
                text: 'Salvar',
                onPressed: () {
                  Modular.to.pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.check_circle_rounded,
                            color: TokenColors.kGreen,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            'Senha alterada com sucesso!',
                            style: TokenTextStyle.heading7,
                          ),
                        ],
                      ),
                      backgroundColor: TokenColors.kLightGreen,
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: 'X',
                        textColor: TokenColors.kBlack1,
                        disabledTextColor: TokenColors.kBlack1,
                        onPressed: () => ScaffoldMessenger.of(context)
                            .removeCurrentSnackBar(),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 2.5.h),
              CustomButton.white(
                text: 'Cancelar',
                onPressed: () => Modular.to.pop(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
