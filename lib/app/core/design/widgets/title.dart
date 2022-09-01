import 'package:flutter/material.dart';

import '../tokens/token_text_style.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TokenTextStyle.heading1,
      ),
    );
  }
}
