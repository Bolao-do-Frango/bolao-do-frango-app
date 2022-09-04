import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/widgets/button.dart';

class IntroComponent extends StatelessWidget {
  const IntroComponent({
    super.key,
    required this.image,
    required this.onPressBack,
    required this.page,
    required this.title,
    required this.subtitle,
    required this.onPressButton,
  });

  final String image;
  final VoidCallback onPressBack;
  final double page;
  final String title;
  final String subtitle;
  final VoidCallback onPressButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Hero(
            tag: 'image-intro',
            child: Image.asset(
              image,
              width: 100.w,
              height: 50.h,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 3.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: onPressBack,
                          child: const Icon(Icons.chevron_left),
                        ),
                        DotsIndicator(
                          dotsCount: 3,
                          position: page,
                          decorator: const DotsDecorator(
                            color: TokenColors.kLightGrey,
                            activeColor: TokenColors.kOrange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    RichText(
                      text: TextSpan(
                        text: title,
                        style: TokenTextStyle.heading1,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    RichText(
                      text: TextSpan(
                        text: subtitle,
                        style: TokenTextStyle.subtitleM,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CustomButton.orange(
                      text: page == 2 ? 'Aposte' : 'Próximo',
                      onPressed: onPressButton,
                    ),
                    SizedBox(height: 2.5.h),
                    CustomButton.white(
                      text: 'Pular',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
