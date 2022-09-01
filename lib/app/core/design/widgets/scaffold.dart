import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomScaffoldComponent extends StatelessWidget {
  const CustomScaffoldComponent({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 3.h,
          ),
          child: body,
        ),
      ),
    );
  }
}
