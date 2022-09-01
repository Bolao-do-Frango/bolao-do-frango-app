import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton.orange({
    required this.text,
    required this.onPressed,
    this.backgroundColor = TokenColors.kOrange,
    super.key,
  });
  const CustomButton.white({
    required this.text,
    required this.onPressed,
    this.backgroundColor = TokenColors.kWhite0,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(Size(
          MediaQuery.of(context).size.width,
          7.h,
        )),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side:  const BorderSide(color: TokenColors.kOrange),
            borderRadius: BorderRadius.circular(12.sp),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
      ),
      child: Text(
        text,
        style: backgroundColor == TokenColors.kWhite0
            ? TokenTextStyle.textButtonWhite
            : TokenTextStyle.textButtonOrange,
      ),
    );
  }
}
