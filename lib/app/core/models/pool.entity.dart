import '../enums/pool_status.dart';

class PoolEntity {
  final int id;
  final PoolStatus status;
  final int points;

  PoolEntity({
    required this.id,
    required this.status,
    required this.points,
  });
}
