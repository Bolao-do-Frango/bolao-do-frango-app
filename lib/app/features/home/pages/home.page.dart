import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/scaffold.dart';
import 'components/app_bar.component.dart';
import 'components/banner.component.dart';
import 'components/card_ranking.component.dart';
import 'components/your_bets.component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isEnableScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppBarComponent(),
          SizedBox(height: 2.h),
          const BannerComponent(isPlayoff: false),
          SizedBox(height: 3.h),
          Text(
            'Suas apostas',
            style: TokenTextStyle.heading8,
          ),
          // const WithoutBetsComponent(),
          const YourBetsComponent(),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Ranking',
                style: TokenTextStyle.heading8,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Ver tudo',
                  style: TokenTextStyle.action,
                ),
              ),
            ],
          ),
          const CardRankingComponent(),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Ranking - Eliminatórias',
                style: TokenTextStyle.heading8,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Ver tudo',
                  style: TokenTextStyle.action,
                ),
              ),
            ],
          ),
          const CardRankingComponent(),
        ],
      ),
    );
  }
}
