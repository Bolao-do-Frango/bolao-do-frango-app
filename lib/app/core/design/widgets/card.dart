import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.color = TokenColors.kWhite1,
    this.borderColor = TokenColors.kLightGrey,
  });

  final Widget child;
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12.sp),
        ),
      ),
      child: SizedBox(
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: child,
        ),
      ),
    );
  }
}
