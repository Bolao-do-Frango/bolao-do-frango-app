import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/token_colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, this.width});

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? _buildAndroidLoading() : _buildIOSLoading();
  }

  Widget _buildAndroidLoading() {
    return CircularProgressIndicator(
      strokeWidth: width ?? 3.h,
      backgroundColor: TokenColors.kLightOrange,
      color: TokenColors.kOrange,
    );
  }

  Widget _buildIOSLoading() {
    return CupertinoActivityIndicator(
      color: TokenColors.kOrange,
      radius: width ?? 3.h,
    );
  }
}
