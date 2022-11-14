import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/validators/mask.validator.dart';

class InputScoreComponent extends StatelessWidget {
  const InputScoreComponent({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10.w,
      height: 4.h,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        controller: controller,
        cursorHeight: 2.h,
        cursorColor: TokenColors.kOrange,
        style: TokenTextStyle.caption.copyWith(
          color: TokenColors.kBlack2,
        ),
        inputFormatters: [MaskValidator.scoreValidator],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: TokenColors.kOrange,
            ),
            borderRadius: BorderRadius.circular(5.sp),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: TokenColors.kOrange,
            ),
            borderRadius: BorderRadius.circular(5.sp),
          ),
        ),
      ),
    );
  }
}
