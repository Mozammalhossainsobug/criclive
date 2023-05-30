import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/repositories/score_repository.dart';

class GetLatestScore {
  final ScoreRepository repository;

  GetLatestScore(this.repository);

  Future<Score> call() async {
    return repository.getLatestScore();
  }
}
