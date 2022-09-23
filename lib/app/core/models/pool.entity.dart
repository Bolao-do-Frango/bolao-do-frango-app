import 'package:json_annotation/json_annotation.dart';

part 'pool.entity.g.dart';

@JsonSerializable(explicitToJson: true)
class PoolEntity {
  final String description;
  final String name;

  PoolEntity({
    required this.description,
    required this.name,
  });

  factory PoolEntity.fromJson(Map<String, dynamic> json) =>
      _$PoolEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PoolEntityToJson(this);
}
