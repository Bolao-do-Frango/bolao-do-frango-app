// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchEntity _$MatchEntityFromJson(Map<String, dynamic> json) => MatchEntity(
      date: json['date'] as String,
      guestTeamId: const DocumentSerializerNullable()
          .fromJson(json['guestTeamId'] as DocumentReference<Object?>?),
      homeTeamId: const DocumentSerializerNullable()
          .fromJson(json['homeTeamId'] as DocumentReference<Object?>?),
      poolId: const DocumentSerializerNullable()
          .fromJson(json['poolId'] as DocumentReference<Object?>?),
      matchNumber: json['matchNumber'] as int,
      hour: json['hour'] as String,
      stage: json['stage'] as String,
    );

Map<String, dynamic> _$MatchEntityToJson(MatchEntity instance) =>
    <String, dynamic>{
      'date': instance.date,
      'guestTeamId':
          const DocumentSerializerNullable().toJson(instance.guestTeamId),
      'homeTeamId':
          const DocumentSerializerNullable().toJson(instance.homeTeamId),
      'poolId': const DocumentSerializerNullable().toJson(instance.poolId),
      'matchNumber': instance.matchNumber,
      'hour': instance.hour,
      'stage': instance.stage,
    };
