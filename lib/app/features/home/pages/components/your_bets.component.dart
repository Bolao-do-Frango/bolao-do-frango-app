import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/enums/pool_status.dart';
import 'custom_card.component.dart';

class YourBetsComponent extends StatelessWidget {
  const YourBetsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 2.h),
        const CardComponent(
          title: 'Bolão do Frango',
          value: '003',
          winner: 'Brasil',
          status: PoolStatus.done,
          icon: Icon(
            Icons.check,
            color: TokenColors.kGreen,
          ),
        ),
        SizedBox(height: 1.h),
        const CardComponent(
          title: 'Bolão do Frango',
          value: '002',
          winner: 'Brasil',
          status: PoolStatus.inProgress,
          icon: Icon(
            Icons.priority_high,
            color: TokenColors.kGold,
          ),
        ),
        SizedBox(height: 1.h),
        const CardComponent(
          title: 'Bolão do Frango',
          value: '001',
          winner: 'Brasil',
          status: PoolStatus.pending,
          icon: Icon(
            Icons.close,
            color: TokenColors.kRed,
          ),
        ),
      ],
    );
  }
}
