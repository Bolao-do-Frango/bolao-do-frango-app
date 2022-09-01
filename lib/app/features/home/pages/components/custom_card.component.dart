import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_with_icon.component.dart';

class CustomCardComponent extends StatelessWidget {
  const CustomCardComponent({
    super.key,
    required this.title,
    required this.value,
    required this.winner,
    required this.status,
  });

  final String title;
  final String value;
  final String winner;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF4F4F4),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Color(0xFFD4D6DD),
        ),
        borderRadius: BorderRadius.all(Radius.circular(12.sp)),
      ),
      child: SizedBox(
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.sp,
            vertical: 16.sp,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'R\$ $value',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextWithIconComponent(
                      text: winner,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: const Color(0xFFDB9B0B),
                      ),
                      icon: Icons.emoji_events,
                      iconColor: const Color(0xFFDB9B0B),
                    ),
                    TextWithIconComponent(
                      text: status,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                      icon: Icons.done,
                      iconColor: const Color(0xFF12AF6E),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
