import 'package:bolao_do_frango_app/app/core/models/pool.entity.dart';
import 'package:bolao_do_frango_app/app/core/models/user.entity.dart';
import 'package:mobx/mobx.dart';

import '../../../core/enums/screen_status.dart';
import '../../../core/models/ranking.entity.dart';
import '../repositories/ranking.repository.dart';

part 'ranking.controller.g.dart';

class RankingController = RankingControllerBase with _$RankingController;

abstract class RankingControllerBase with Store {
  final RankingRepository _repository;

  @observable
  late List<RankingEntity> ranking = [];

  @observable
  late List<PoolEntity> pools = [];

  @observable
  late UserEntity user;

  @observable
  late ScreenStatus screenStatus = ScreenStatus.idle;

  RankingControllerBase(this._repository);

  @action
  void getRanking() {
    screenStatus = ScreenStatus.loading;

    try {
      ranking = _repository.getRanking();
      screenStatus = ScreenStatus.success;
    } catch (_) {
      screenStatus = ScreenStatus.error;
    }
  }

  @action
  void getDetails(String username) {
    screenStatus = ScreenStatus.loading;
  }
}
