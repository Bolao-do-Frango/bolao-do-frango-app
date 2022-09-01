import 'package:flutter/material.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String hintText;
  final IconButton? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter: '*',
      cursorColor: TokenColors.kOrange,
      style: TokenTextStyle.body3,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: TokenColors.kOrange),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
        hintText: hintText,
        hintStyle: TokenTextStyle.body0,
      ),
    );
  }
}
