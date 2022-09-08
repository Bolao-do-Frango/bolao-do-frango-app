import 'package:flutter/material.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';

class LineInfoComponent extends StatelessWidget {
  const LineInfoComponent({
    super.key,
    required this.param,
    required this.value,
  });

  final String param;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          param,
          style: TokenTextStyle.heading6.copyWith(
            color: TokenColors.kBlack1,
          ),
        ),
        Text(
          value,
          style: TokenTextStyle.heading7,
        ),
      ],
    );
  }
}
