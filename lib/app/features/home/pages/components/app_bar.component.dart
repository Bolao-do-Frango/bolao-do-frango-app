import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design/tokens/token_colors.dart';
import '../../../../core/design/tokens/token_text_style.dart';
import '../../controllers/home.controller.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({super.key});

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  late HomeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Modular.get<HomeController>();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Modular.to.pushNamed('/account/details'),
            icon: const Hero(
              tag: 'account_circle',
              child: Icon(
                Icons.account_circle,
                color: TokenColors.kBlack2,
              ),
            ),
          ),
          Text(
            'Bem vindo!',
            style: TokenTextStyle.heading6,
          ),
        ],
      ),
      actionsIconTheme: const IconThemeData(
        color: TokenColors.kBlack1,
      ),
      actions: [
        PopupMenuButton<String>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.sp),
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 2.h,
                ),
                child: const Text('FAQ'),
              ),
              onTap: () => Modular.to.pushNamed('/faq/'),
            ),
            PopupMenuItem(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 2.h,
                ),
                child: const Text('Sair'),
              ),
              onTap: () {
                _controller.signOut();
                Modular.to.pushReplacementNamed('/auth/welcome');
              },
            ),
          ],
        ),
      ],
    );
  }
}
