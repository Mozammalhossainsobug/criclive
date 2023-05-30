import 'package:criclive/features/data/sources/score_remote_datasource.dart';
import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/repositories/score_repository.dart';

class ScoreRepositoryImpl implements ScoreRepository {
  final ScoreRemoteDataSource remoteDataSource;

  ScoreRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Score> getLatestScore() => remoteDataSource.getLatestScore();
}
