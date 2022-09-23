import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import 'components/app_bar_with_bottom.component.dart';
import 'components/body_tab_view.component.dart';
import 'components/dialog.component.dart';

class BetPage extends StatefulWidget {
  const BetPage({super.key});

  @override
  State<BetPage> createState() => _BetPageState();
}

class _BetPageState extends State<BetPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabs = [
    'Grupo A',
    'Grupo B',
    'Grupo C',
    'Grupo D',
    'Grupo E',
    'Grupo F',
    'Grupo G',
    'Grupo H',
    'Oitavas de final',
    'Quartas de final',
    'Semifinais',
    'Terceiro lugar',
    'Final',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.w, 15.h),
          child: AppBarWithBottomComponent(
            tabController: _tabController,
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: tabs
              .map(
                (tab) => BodyTabViewComponent(
                  stage: tab,
                  statusValue: 100 / tabs.length * tabs.indexOf(tab),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return CustomDialogComponent(
                          stage: tab,
                          onPressed: () {
                            _tabController.index = tabs.indexOf(tab) + 1;
                            Modular.to.pop();
                          },
                        );
                      }),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}