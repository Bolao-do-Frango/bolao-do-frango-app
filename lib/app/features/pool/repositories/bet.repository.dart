import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/models/match.entity.dart';
import '../../../core/models/team.entity.dart';

class BetRepository {
  final firestore = FirebaseFirestore.instance;

  Future<List<MatchEntity>> getMatchByStage(String stage) {
    return firestore
        .collection('match')
        .where('stage', isEqualTo: stage)
        .get()
        .then((QuerySnapshot<Map<String, dynamic>> value) {
      final List<MatchEntity> matchs = [];
      for (var element in value.docs) {
        matchs.add(MatchEntity.fromJson(element.data()));
      }

      matchs.sort(
        (a, b) {
          return a.matchNumber.compareTo(b.matchNumber);
        },
      );

      return matchs;
    });
  }

  Future<List<TeamEntity>> getTeams() {
    return firestore
        .collection('team')
        .get()
        .then((QuerySnapshot<Map<String, dynamic>> value) {
      final List<TeamEntity> teams = [];
      for (var element in value.docs) {
        teams.add(TeamEntity.fromJson(element.data()));
      }

      return teams;
    });
  }
}
