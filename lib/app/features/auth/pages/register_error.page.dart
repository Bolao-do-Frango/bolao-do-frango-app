import 'package:bolao_do_frango_app/app/core/design/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/bottom_register_error.component.dart';

class RegisterErrorPage extends StatelessWidget {
  const RegisterErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
          const BottomRegisterErrorComponent(),
        ],
      ),
    );
  }
}
