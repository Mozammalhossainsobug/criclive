import 'package:criclive/features/domain/entites/scoreboard.dart';

abstract class ScoreRepository {
  Future<Score> getLatestScore();
}
