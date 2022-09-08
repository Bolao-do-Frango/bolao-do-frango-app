import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_colors.dart';
import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/card.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../../../core/design/widgets/app_bar.dart';
import 'components/line_info.component.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: <Widget>[
          const CustomAppBar(title: 'Daniel245'),
          SizedBox(height: 2.h),
          CustomCard(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'account_circle',
                    child: Icon(
                      Icons.account_circle,
                      size: 50.sp,
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            'Daniel245',
                            style: TokenTextStyle.heading6.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(width: 1.w),
                          const Icon(
                            Icons.emoji_events,
                            color: TokenColors.kGrey,
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      RichText(
                        text: TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: '242',
                              style: TokenTextStyle.action.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' Pontos',
                              style: TokenTextStyle.heading7,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h),
                      RichText(
                        text: TextSpan(
                          text: '#2',
                          style: TokenTextStyle.action.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Informações da Conta',
                style: TokenTextStyle.heading8,
              ),
              TextButton(
                onPressed: () => Modular.to.pushNamed('/account/edit'),
                child: Text(
                  'Editar',
                  style: TokenTextStyle.action,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          CustomCard(
            child: Column(
              children: <Widget>[
                const LineInfoComponent(
                  param: 'Email',
                  value: 'daniel.oliveira@email.com',
                ),
                SizedBox(height: 3.h),
                const LineInfoComponent(
                  param: 'Senha',
                  value: '**********',
                ),
                SizedBox(height: 3.h),
                const LineInfoComponent(
                  param: 'Username',
                  value: 'Daniel245',
                ),
                SizedBox(height: 3.h),
                const LineInfoComponent(
                  param: 'Nome',
                  value: 'Daniel Oliveira Silva',
                ),
                SizedBox(height: 3.h),
                const LineInfoComponent(
                  param: 'Celular',
                  value: '(51) 9 8562-2190',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
