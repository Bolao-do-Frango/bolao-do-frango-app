import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Modular.to.pushNamed('/account/details'),
              icon: const Hero(
                tag: 'account_circle',
                child: Icon(
                  Icons.account_circle,
                  color: TokenColors.kBlack2,
                ),
              ),
            ),
            Text(
              'Bem vindo!',
              style: TokenTextStyle.heading6,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            color: TokenColors.kBlack2,
          ),
        ),
      ],
    );
  }
}
