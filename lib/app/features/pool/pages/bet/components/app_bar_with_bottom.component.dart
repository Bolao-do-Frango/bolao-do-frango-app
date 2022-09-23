import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/widgets/app_bar.dart';

class AppBarWithBottomComponent extends StatelessWidget {
  const AppBarWithBottomComponent({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  final TabController tabController;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Editar aposta',
      bottomTab: TabBar(
          unselectedLabelColor: TokenColors.kGrey,
          unselectedLabelStyle: TokenTextStyle.body3,
          isScrollable: true,
          labelColor: TokenColors.kBlack3,
          labelStyle: TokenTextStyle.heading4,
          indicator: MaterialIndicator(
            color: TokenColors.kOrange,
            horizontalPadding: 8.w,
            height: 0.7.h,
            bottomLeftRadius: 12.sp,
            bottomRightRadius: 12.sp,
            topLeftRadius: 12.sp,
            topRightRadius: 12.sp,
          ),
          enableFeedback: true,
          physics: const ClampingScrollPhysics(),
          controller: tabController,
          tabs: tabs
              .map(
                (tabName) => Tab(text: tabName),
              )
              .toList()),
    );
  }
}
