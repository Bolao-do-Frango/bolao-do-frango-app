import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class LineRankingComponent extends StatelessWidget {
  const LineRankingComponent({
    super.key,
    required this.position,
    required this.name,
    required this.points,
  });

  final int position;
  final String name;
  final int points;

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
            _buildIcon(),
          ],
        ),
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: points.toString(),
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

  Widget _buildIcon() {
    switch (position) {
      case 1:
        return const Icon(
          Icons.emoji_events,
          color: TokenColors.kGold,
        );
      case 2:
        return const Icon(
          Icons.emoji_events,
          color: TokenColors.kGrey,
        );
      case 3:
        return const Icon(
          Icons.emoji_events,
          color: TokenColors.kBronze,
        );
      default:
        return Container();
    }
  }
}
