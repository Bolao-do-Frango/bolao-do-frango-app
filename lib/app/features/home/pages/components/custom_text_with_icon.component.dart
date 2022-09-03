import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextWithIconComponent extends StatelessWidget {
  const TextWithIconComponent({
    super.key,
    required this.text,
    required this.textStyle,
    required this.icon,
    required this.iconColor,
    this.iconSize,
  });

  final String text;
  final TextStyle textStyle;
  final IconData icon;
  final Color iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: text,
            style: textStyle,
          ),
        ),
        SizedBox(width: 1.w),
        Icon(
          icon,
          size: iconSize ?? 2.h,
          color: iconColor,
        ),
      ],
    );
  }
}
