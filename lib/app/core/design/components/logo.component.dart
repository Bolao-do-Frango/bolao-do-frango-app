import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent.small({
    super.key,
    this.height = 10,
  });

  const LogoComponent.medium({
    super.key,
    this.height = 20,
  });

  const LogoComponent.large({
    super.key,
    this.height = 30,
  });

  final double height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo/logo - grande.png',
        height: height.h,
      ),
    );
  }
}
