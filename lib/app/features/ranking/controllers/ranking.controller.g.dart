// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RankingController on RankingControllerBase, Store {
  late final _$rankingAtom =
      Atom(name: 'RankingControllerBase.ranking', context: context);

  @override
  List<RankingEntity> get ranking {
    _$rankingAtom.reportRead();
    return super.ranking;
  }

  @override
  set ranking(List<RankingEntity> value) {
    _$rankingAtom.reportWrite(value, super.ranking, () {
      super.ranking = value;
    });
  }

  late final _$poolsAtom =
      Atom(name: 'RankingControllerBase.pools', context: context);

  @override
  List<PoolEntity> get pools {
    _$poolsAtom.reportRead();
    return super.pools;
  }

  @override
  set pools(List<PoolEntity> value) {
    _$poolsAtom.reportWrite(value, super.pools, () {
      super.pools = value;
    });
  }

  late final _$userAtom =
      Atom(name: 'RankingControllerBase.user', context: context);

  @override
  UserEntity get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserEntity value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$screenStatusAtom =
      Atom(name: 'RankingControllerBase.screenStatus', context: context);

  @override
  ScreenStatus get screenStatus {
    _$screenStatusAtom.reportRead();
    return super.screenStatus;
  }

  @override
  set screenStatus(ScreenStatus value) {
    _$screenStatusAtom.reportWrite(value, super.screenStatus, () {
      super.screenStatus = value;
    });
  }

  late final _$RankingControllerBaseActionController =
      ActionController(name: 'RankingControllerBase', context: context);

  @override
  void getRanking() {
    final _$actionInfo = _$RankingControllerBaseActionController.startAction(
        name: 'RankingControllerBase.getRanking');
    try {
      return super.getRanking();
    } finally {
      _$RankingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getDetails(String username) {
    final _$actionInfo = _$RankingControllerBaseActionController.startAction(
        name: 'RankingControllerBase.getDetails');
    try {
      return super.getDetails(username);
    } finally {
      _$RankingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ranking: ${ranking},
pools: ${pools},
user: ${user},
screenStatus: ${screenStatus}
    ''';
  }
}
