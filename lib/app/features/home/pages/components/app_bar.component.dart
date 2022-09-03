import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: TokenColors.kBlack2,
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
