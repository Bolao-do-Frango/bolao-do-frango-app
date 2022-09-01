import 'package:bolao_do_frango_app/app/core/design/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/bottom_register_success.component.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldComponent(
      body: Column(
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
          const BottomRegisterSuccessComponent(),
        ],
      ),
    );
  }
}
