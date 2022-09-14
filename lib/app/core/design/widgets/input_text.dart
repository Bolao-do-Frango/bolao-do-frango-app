import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.inputFormatter,
    this.validator,
    this.textInputType,
    this.textInputAction,
  });

  final TextEditingController controller;
  final String hintText;
  final IconButton? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final TextInputFormatter? inputFormatter;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter: '*',
      enabled: enabled,
      inputFormatters: inputFormatter != null
          ? <TextInputFormatter>[inputFormatter!]
          : <TextInputFormatter>[],
      validator: validator,
      keyboardType: textInputType,
      textInputAction: textInputAction,
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
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: TokenColors.kRed),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
        hintText: hintText,
        hintStyle: TokenTextStyle.body0,
      ),
    );
  }
}
