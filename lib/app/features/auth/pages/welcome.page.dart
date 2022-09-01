import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/bottom_welcome.component.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    width: 90.w,
                  ),
                ),
              ],
            ),
            const BottomWelcomeComponent(),
          ],
        ),
      ),
    );
  }
}
