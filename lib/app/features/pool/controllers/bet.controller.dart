import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/models/match.entity.dart';
import '../../../core/models/team.entity.dart';
import '../repositories/bet.repository.dart';

part 'bet.controller.g.dart';

class BetController = BetControllerBase with _$BetController;

abstract class BetControllerBase with Store {
  final BetRepository _repository;

  @observable
  late List<MatchEntity> matchs = [];

  @observable
  late List<TeamEntity> teams = [];

  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  BetControllerBase(this._repository);

  @action
  Future<void> getMatchs(String stage) async {
    screenStatus = ScreenStatus.loading;

    try {
      teams = await _repository.getTeams();
      matchs = await _repository.getMatchByStage(stage);

      screenStatus = ScreenStatus.success;
    } on Exception catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }
}
