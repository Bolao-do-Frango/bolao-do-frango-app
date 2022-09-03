import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_text_style.dart';
import '../../../../core/design/widgets/button.dart';

class WithoutBetsComponent extends StatelessWidget {
  const WithoutBetsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 4.h),
        Icon(
          Icons.content_paste_off_outlined,
          size: 5.h,
        ),
        SizedBox(height: 2.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Você ainda não fez nenhuma aposta!',
            style: TokenTextStyle.subtitleM,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 4.h),
        CustomButton.white(
          text: 'Comece agora',
          onPressed: () {},
        ),
      ],
    );
  }
}
