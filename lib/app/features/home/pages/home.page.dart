import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import 'components/custom_card.component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Modular.to.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF4F4F4),
          elevation: 0,
          centerTitle: false,
          title: Text(
            'Bem vindo!',
            style: TextStyle(
              color: const Color(0xFF171717),
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
          ),
          leading: const Icon(
            Icons.account_circle,
            color: Color(0xFF171717),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color(0xFF171717),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
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
                    Text(
                      'Suas apostas',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (Rect rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black87,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black87,
                        ],
                        stops: [0.0, 0.01, 0.9, 1.0],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstOut,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext _, int index) {
                          return CustomCardComponent(
                            title: 'Bolão do Frango 00${index + 1}',
                            value: '20,00',
                            winner: 'Brasil',
                            status: 'Concluído',
                          );
                        }),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 2.h),
                    Card(
                      color: const Color(0xFFF5DDC9),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Bolão do Frango',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Description. Lorem ipsum dolor sit amet '
                                'consectetur adipiscing elit, sed do.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.symmetric(
                                    horizontal: 16.sp,
                                    vertical: 12.sp,
                                  )),
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.sp),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xFFDB6300),
                                  ),
                                ),
                                child: Text(
                                  'Aposte',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
