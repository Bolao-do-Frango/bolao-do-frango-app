import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/input_text.dart';

class InputWithTitle extends StatelessWidget {
  const InputWithTitle({
    super.key,
    required this.textEditingController,
    required this.text,
    this.enabled = true,
    this.suffixIcon,
    this.inputFormatter,
  });

  final TextEditingController textEditingController;
  final String text;
  final bool enabled;
  final IconButton? suffixIcon;
  final TextInputFormatter? inputFormatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 3.h),
        Text(
          text,
          style: TokenTextStyle.heading5,
        ),
        SizedBox(height: 1.h),
        CustomInputText(
          controller: textEditingController,
          hintText: text,
          suffixIcon: suffixIcon,
          enabled: enabled,
          inputFormatter: inputFormatter,
        ),
      ],
    );
  }
}
