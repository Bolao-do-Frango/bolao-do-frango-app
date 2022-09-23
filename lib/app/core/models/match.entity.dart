import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import 'json.converter.dart';

part 'match.entity.g.dart';

@JsonSerializable(explicitToJson: true)
class MatchEntity {
  final String date;
  @DocumentSerializerNullable()
  final DocumentReference? guestTeamId;
  @DocumentSerializerNullable()
  final DocumentReference? homeTeamId;
  @DocumentSerializerNullable()
  final DocumentReference? poolId;
  final int matchNumber;
  final String hour;
  final String stage;

  MatchEntity({
    required this.date,
    required this.guestTeamId,
    required this.homeTeamId,
    required this.poolId,
    required this.matchNumber,
    required this.hour,
    required this.stage,
  });

  factory MatchEntity.fromJson(Map<String, dynamic> json) =>
      _$MatchEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MatchEntityToJson(this);
}
