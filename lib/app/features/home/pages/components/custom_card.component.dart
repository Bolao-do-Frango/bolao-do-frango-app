import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/card.dart';
import '../../../../core/enums/bet_status.dart';
import 'custom_text_with_icon.component.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    super.key,
    required this.title,
    required this.value,
    required this.winner,
    required this.status,
    required this.icon,
  });

  final String title;
  final String value;
  final String winner;
  final BetStatus status;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: title,
                  style: TokenTextStyle.heading4,
                ),
              ),
              Chip(
                backgroundColor: TokenColors.kLightOrange,
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                ),
                label: Text(
                  value,
                  style: TokenTextStyle.caption,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWithIconComponent(
                text: winner,
                textStyle: TokenTextStyle.subtitleP.copyWith(
                  color: TokenColors.kGold,
                ),
                icon: Icons.emoji_events,
                iconColor: TokenColors.kGold,
              ),
              TextWithIconComponent(
                text: status.description,
                textStyle: TokenTextStyle.subtitleP,
                icon: icon.icon!,
                iconColor: icon.color!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
