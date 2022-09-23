import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/widgets/card.dart';
import '../../../controllers/bet.controller.dart';
import 'input_score.component.dart';
import 'team.component.dart';

class GameCardComponent extends StatefulWidget {
  const GameCardComponent({
    super.key,
    required this.date,
    required this.hour,
    required this.homeTeamReference,
    required this.guestTeamReference,
    required this.controller,
  });

  final String date;
  final String hour;
  final DocumentReference homeTeamReference;
  final DocumentReference guestTeamReference;
  final BetController controller;

  @override
  State<GameCardComponent> createState() => _GameCardComponentState();
}

class _GameCardComponentState extends State<GameCardComponent> {
  final TextEditingController _homeScoreController = TextEditingController();
  final TextEditingController _guestScoreController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TokenTextStyle.body1.copyWith(
                color: TokenColors.kBlack1,
              ),
              children: <InlineSpan>[
                TextSpan(text: widget.date),
                WidgetSpan(child: SizedBox(width: 1.w)),
                const TextSpan(text: '•'),
                WidgetSpan(child: SizedBox(width: 1.w)),
                TextSpan(text: widget.hour),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: <Widget>[
              TeamComponent(
                team: widget.controller.teams
                    .where((team) =>
                        team.id ==
                          widget.homeTeamReference.id,
                    )
                    .first
                    .abbreviation,
                isHomeTeam: true,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InputScoreComponent(
                      controller: _homeScoreController,
                    ),
                    SizedBox(width: 2.w),
                    InputScoreComponent(
                      controller: _guestScoreController,
                    ),
                  ],
                ),
              ),
              TeamComponent(
                team: widget.controller.teams
                    .where((team) =>
                        team.id ==
                          widget.guestTeamReference.id,
                    )
                    .first
                    .abbreviation,
                isHomeTeam: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
