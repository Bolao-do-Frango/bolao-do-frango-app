import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/bottom_login.component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 3.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 10.h),
                  Center(
                    child: Image.asset(
                      'assets/images/home.png',
                      width: 50.w,
                    ),
                  ),
                ],
              ),
              BottomLoginComponent(),
            ],
          ),
        ),
      ),
    );
  }
}