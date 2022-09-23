import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/widgets/button.dart';

class CustomDialogComponent extends StatelessWidget {
  const CustomDialogComponent({
    super.key,
    required this.stage,
    required this.onPressed,
  });

  final String stage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: TokenColors.kWhite1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
      insetPadding: EdgeInsets.all(16.sp),
      child: SizedBox(
        height: 50.h,
        width: 70.w,
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'Classificados',
                      style: TokenTextStyle.heading6,
                    ),
                  ),
                  Chip(
                    backgroundColor: TokenColors.kLightOrange,
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                    ),
                    label: Text(
                      stage,
                      style: TokenTextStyle.caption,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Image.asset(
              //       'assets/images/flags/ALE.png',
              //       height: 16.sp,
              //       width: 16.sp,
              //       fit: BoxFit.cover,
              //       filterQuality: FilterQuality.high,
              //     ),
              //   ],
              // ),
              SizedBox(height: 2.5.h),
              CustomButton.orange(
                text: 'Ok',
                onPressed: onPressed,
              ),
              SizedBox(height: 2.5.h),
              CustomButton.white(
                text: 'Voltar',
                onPressed: () => Modular.to.pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
