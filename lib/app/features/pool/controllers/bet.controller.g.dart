// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BetController on BetControllerBase, Store {
  late final _$matchsAtom =
      Atom(name: 'BetControllerBase.matchs', context: context);

  @override
  List<MatchEntity> get matchs {
    _$matchsAtom.reportRead();
    return super.matchs;
  }

  @override
  set matchs(List<MatchEntity> value) {
    _$matchsAtom.reportWrite(value, super.matchs, () {
      super.matchs = value;
    });
  }

  late final _$teamsAtom =
      Atom(name: 'BetControllerBase.teams', context: context);

  @override
  List<TeamEntity> get teams {
    _$teamsAtom.reportRead();
    return super.teams;
  }

  @override
  set teams(List<TeamEntity> value) {
    _$teamsAtom.reportWrite(value, super.teams, () {
      super.teams = value;
    });
  }

  late final _$screenStatusAtom =
      Atom(name: 'BetControllerBase.screenStatus', context: context);

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

  late final _$getMatchsAsyncAction =
      AsyncAction('BetControllerBase.getMatchs', context: context);

  @override
  Future<void> getMatchs(String stage) {
    return _$getMatchsAsyncAction.run(() => super.getMatchs(stage));
  }

  @override
  String toString() {
    return '''
matchs: ${matchs},
teams: ${teams},
screenStatus: ${screenStatus}
    ''';
  }
}
