import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({
    super.key,
    required this.isPlayoff,
  });

  final bool isPlayoff;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isPlayoff ? TokenColors.kLightGold : TokenColors.kLightOrange,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.sp),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text:
                          isPlayoff ? 'Bolão eliminatórias' : 'Bolão do Frango',
                      style: TokenTextStyle.heading4,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                        text: isPlayoff
                            ? 'Um novo bolão! Aposte apenas nos jogos '
                                'da fase eliminatórias.'
                            : 'Description. Lorem ipsum dolor sit amet '
                                'consectetur adipiscing elit, sed do.',
                        style: TokenTextStyle.body1.copyWith(
                          color: TokenColors.kDarkGrey,
                        )),
                  ),
                  SizedBox(height: 3.h),
                  ElevatedButton(
                    onPressed: isPlayoff ? () {} : () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 12.sp,
                      )),
                      elevation: MaterialStateProperty.all<double>(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        isPlayoff ? TokenColors.kGold : TokenColors.kOrange,
                      ),
                    ),
                    child: Text(
                      'Aposte',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.sp),
                bottomRight: Radius.circular(12.sp),
              ),
              child: Image.asset(
                isPlayoff
                    ? 'assets/images/silhouette-of-a-man-playing-soccer-in-golden-hour-sunset.png'
                    : 'assets/images/winning-trophy-football.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                height: 30.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
