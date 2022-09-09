import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../core/design/tokens/token_text_style.dart';
import '../../../core/design/widgets/app_bar.dart';
import '../../../core/design/widgets/card.dart';
import '../../../core/design/widgets/scaffold.dart';
import '../controllers/faq.controller.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  late FaqController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<FaqController>();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isEnableScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomAppBar(title: 'FAQ'),
          SizedBox(height: 3.h),
          Text(
            'Perguntas frequentes',
            style: TokenTextStyle.heading8,
          ),
          SizedBox(height: 2.h),
          CustomCard(
            child: Observer(
              builder: (_) {
                return ExpansionPanelList(
                  elevation: 0,
                  expansionCallback: (int panelIndex, _) {
                    setState(() {
                      controller.setExpansionPanels(panelIndex);
                    });
                  },
                  expandedHeaderPadding: EdgeInsets.zero,
                  children:
                      controller.panels.map(_buildExpansionPanel).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  ExpansionPanel _buildExpansionPanel(bool isExpanded) {
    return ExpansionPanel(
      canTapOnHeader: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      headerBuilder: (_, __) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Lorem ipsum dolor sit amet?',
              style: TokenTextStyle.heading6,
            ),
          ),
        );
      },
      body: Column(
        children: <Widget>[
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea '
            'commodo consequat.',
            style: TokenTextStyle.heading7,
          ),
          SizedBox(height: 2.h),
          const Divider(),
        ],
      ),
      isExpanded: isExpanded,
    );
  }
}
