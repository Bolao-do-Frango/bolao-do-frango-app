import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.isEnableScroll = false,
  });

  final Widget body;
  final bool isEnableScroll;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isEnableScroll
          ? SingleChildScrollView(
              child: _safeArea(),
            )
          : _safeArea(),
    );
  }

  Widget _safeArea() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 3.h,
        ),
        child: body,
      ),
    );
  }
}
