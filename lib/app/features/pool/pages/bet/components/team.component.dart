import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_text_style.dart';

class TeamComponent extends StatelessWidget {
  const TeamComponent({
    super.key,
    required this.team,
    required this.isHomeTeam,
  });

  final String team;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return isHomeTeam ? _buildHomeTeam() : _buildVisitingTeam();
  }

  Expanded _buildHomeTeam() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: team,
              style: TokenTextStyle.heading6,
            ),
          ),
          SizedBox(width: 2.w),
          Image.asset(
            'assets/images/flags/$team.png',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            height: 16.sp,
            width: 16.sp,
          ),
          SizedBox(width: 1.w),
        ],
      ),
    );
  }

  Expanded _buildVisitingTeam() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 1.w),
          Image.asset(
            'assets/images/flags/$team.png',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            height: 16.sp,
            width: 16.sp,
          ),
          SizedBox(width: 2.w),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: team,
              style: TokenTextStyle.heading6,
            ),
          ),
        ],
      ),
    );
  }
}
