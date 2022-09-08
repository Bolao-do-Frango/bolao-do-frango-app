class GameEntity {
  final int id;
  final String homeTeam;
  final String homeTeamGoals;
  final String? homeTeamPenaltyGoals;
  final String visitingTeam;
  final String visitingTeamGoals;
  final String? visitingTeamPenaltyGoals;
  final String day;
  final String hour;

  GameEntity({
    required this.id,
    required this.homeTeam,
    required this.homeTeamGoals,
    required this.visitingTeam,
    required this.visitingTeamGoals,
    required this.day,
    required this.hour,
    this.homeTeamPenaltyGoals,
    this.visitingTeamPenaltyGoals,
  });
}
