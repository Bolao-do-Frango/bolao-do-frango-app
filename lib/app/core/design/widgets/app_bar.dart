import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.bottomTab,
  });

  final String title;
  final TabBar? bottomTab;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TokenTextStyle.heading6,
      ),
      iconTheme: IconThemeData(
        color: TokenColors.kBlack1,
        size: 13.sp,
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      bottom: bottomTab,
    );
  }
}
