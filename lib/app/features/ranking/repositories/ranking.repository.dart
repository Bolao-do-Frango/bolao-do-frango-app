import '../../../core/models/ranking.entity.dart';

class RankingRepository {
  List<RankingEntity> getRanking() {
    return [
      RankingEntity(position: 1, username: 'Denis Almeida', points: 280),
      RankingEntity(position: 2, username: 'Daniel245', points: 242),
      RankingEntity(position: 3, username: 'Rick', points: 202),
      RankingEntity(position: 4, username: 'Lana86', points: 198),
      RankingEntity(position: 5, username: 'BiaSilva', points: 174),
      RankingEntity(position: 6, username: 'Joaogabriel', points: 140),
      RankingEntity(position: 7, username: 'Kaio98', points: 129),
      RankingEntity(position: 8, username: 'BelleSouza', points: 104),
      RankingEntity(position: 9, username: 'Nando99', points: 97),
    ];
  }
}
