import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';

class LineRankingComponent extends StatelessWidget {
  const LineRankingComponent({
    super.key,
    required this.position,
    required this.name,
    required this.points,
    required this.colorIcon,
  });

  final String position;
  final String name;
  final String points;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: '$position. ',
                    style: TokenTextStyle.heading6,
                  ),
                  TextSpan(
                    text: name,
                    style: TokenTextStyle.heading6,
                  ),
                ],
              ),
            ),
            SizedBox(width: 1.w),
            Icon(
              Icons.emoji_events,
              color: colorIcon,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: points,
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
            SizedBox(width: 1.w),
            const Icon(Icons.chevron_right)
          ],
        ),
      ],
    );
  }
}
