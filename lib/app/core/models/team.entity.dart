import 'package:json_annotation/json_annotation.dart';

part 'team.entity.g.dart';

@JsonSerializable(explicitToJson: true)
class TeamEntity {
  final String id;
  final String abbreviation;
  final String englishName;
  final String name;

  TeamEntity({
    required this.id,
    required this.abbreviation,
    required this.englishName,
    required this.name,
  });

  factory TeamEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TeamEntityToJson(this);
}
