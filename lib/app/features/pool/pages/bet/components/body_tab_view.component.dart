import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/design/tokens/token_colors.dart';
import '../../../../../core/design/tokens/token_text_style.dart';
import '../../../../../core/design/widgets/button.dart';
import '../../../../../core/design/widgets/loading.dart';
import '../../../../../core/enums/screen_status.dart';
import '../../../controllers/bet.controller.dart';
import 'game_card.component.dart';

class BodyTabViewComponent extends StatefulWidget {
  const BodyTabViewComponent({
    super.key,
    required this.stage,
    required this.statusValue,
    required this.onPressed,
  });

  final String stage;
  final double statusValue;
  final VoidCallback onPressed;

  @override
  State<BodyTabViewComponent> createState() => _BodyTabViewComponentState();
}

class _BodyTabViewComponentState extends State<BodyTabViewComponent> {
  late BetController _controller;

  @override
  void initState() {
    _controller = Modular.get<BetController>();
    _controller.getMatchs(widget.stage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return _controller.screenStatus == ScreenStatus.loading
          ? const Center(child: CustomLoading())
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 3.h,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.h),
                    FAProgressBar(
                      size: 1.h,
                      currentValue: widget.statusValue,
                      progressColor: TokenColors.kOrange,
                      borderRadius: BorderRadius.circular(12.sp),
                      backgroundColor: TokenColors.kLightOrange,
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: !widget.stage.contains('Grupo')
                                ? 'Playoffs'
                                : 'Fase de Grupos',
                            style: TokenTextStyle.heading8,
                          ),
                        ),
                        Chip(
                          backgroundColor: TokenColors.kLightOrange,
                          visualDensity: VisualDensity.compact,
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                          ),
                          label: Text(
                            widget.stage,
                            style: TokenTextStyle.caption,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Column(
                      children: _controller.matchs.map(
                        (match) {
                          return GameCardComponent(
                            date: match.date,
                            hour: match.hour,
                            homeTeamReference: match.homeTeamId!,
                            guestTeamReference: match.guestTeamId!,
                            controller: _controller,
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(height: 2.5.h),
                    CustomButton.orange(
                      text: 'Próximo',
                      onPressed: widget.onPressed,
                    ),
                    SizedBox(height: 2.5.h),
                    CustomButton.white(
                      text: 'Anterior',
                      onPressed: () => Modular.to.pop(),
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
