// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamEntity _$TeamEntityFromJson(Map<String, dynamic> json) => TeamEntity(
      id: json['id'] as String,
      abbreviation: json['abbreviation'] as String,
      englishName: json['englishName'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$TeamEntityToJson(TeamEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'abbreviation': instance.abbreviation,
      'englishName': instance.englishName,
      'name': instance.name,
    };
