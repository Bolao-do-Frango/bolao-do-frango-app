import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';
import '../tokens/token_text_style.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.hint,
    required this.dropdownItems,
    required this.dropdownValue,
    required this.onChanged,
    this.validator,
  });

  final String hint;
  final List<String> dropdownItems;
  final String dropdownValue;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: Text(
        hint,
        style: TokenTextStyle.body0,
      ),
      borderRadius: BorderRadius.circular(12.sp),
      elevation: 1,
      style: TokenTextStyle.body3,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: TokenColors.kOrange),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: TokenColors.kRed),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: TokenColors.kGrey),
        ),
      ),
      dropdownColor: TokenColors.kWhite1,
      items: dropdownItems
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      value: dropdownValue.isEmpty ? null : dropdownValue,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
