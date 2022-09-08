import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/components/line_ranking.component.dart';
import '../../../../core/design/widgets/card.dart';

class CardRankingComponent extends StatelessWidget {
  const CardRankingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: <Widget>[
          const LineRankingComponent(
            position: 1,
            name: 'DenisAlmeida',
            points: 280,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: const Divider(),
          ),
          const LineRankingComponent(
            position: 2,
            name: 'Daniel245',
            points: 242,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: const Divider(),
          ),
          const LineRankingComponent(
            position: 3,
            name: 'Rick',
            points: 202,
          ),
        ],
      ),
    );
  }
}
