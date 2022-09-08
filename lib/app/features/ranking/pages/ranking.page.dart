import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/components/line_ranking.component.dart';
import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/app_bar.dart';
import '../../../core/design/widgets/card.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../controllers/ranking.controller.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  late RankingController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<RankingController>();
    controller.getRanking();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isEnableScroll: true,
      body: Column(
        children: <Widget>[
          const CustomAppBar(title: 'Ranking'),
          SizedBox(height: 1.h),
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
                  'Como funciona',
                  style: TokenTextStyle.action,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          CustomCard(
            child: Observer(builder: (_) {
              return Column(
                children: controller.ranking.map(
                  (e) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () => Modular.to.pushNamed(
                            '/ranking/details',
                            arguments: e.username,
                          ),
                          child: LineRankingComponent(
                            position: e.position,
                            name: e.username,
                            points: e.points,
                          ),
                        ),
                        e == controller.ranking.last
                            ? Container()
                            : Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h),
                                child: const Divider(),
                              ),
                      ],
                    );
                  },
                ).toList(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
