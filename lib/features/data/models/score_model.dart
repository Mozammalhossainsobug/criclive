import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/entites/team_info.dart';

class ScoreModel extends Score {
  final DateTime date;
  final String seriesId;
  final bool fantasyEnabled;
  final bool bbbEnabled;
  final bool hasSquad;

  ScoreModel({
    required this.date,
    required this.seriesId,
    required this.fantasyEnabled,
    required this.bbbEnabled,
    required this.hasSquad,
    required String id,
    required String name,
    required String matchType,
    required String status,
    required String venue,
    required DateTime dateTimeGMT,
    required List<String> teams,
    required List<TeamInfo> teamInfo,
    required bool matchStarted,
    required bool matchEnded,
  }) : super(
          id: id,
          name: name,
          matchType: matchType,
          status: status,
          venue: venue,
          dateTimeGMT: dateTimeGMT,
          teams: teams,
          teamInfo: teamInfo,
          matchStarted: matchStarted,
          matchEnded: matchEnded,
        );

  factory ScoreModel.fromJson(Map<String, dynamic> json) {
    return ScoreModel(
      id: json['id'],
      name: json['name'],
      matchType: json['matchType'],
      status: json['status'],
      venue: json['venue'],
      date: DateTime.parse(json['date']),
      dateTimeGMT: DateTime.parse(json['dateTimeGMT']),
      teams: List<String>.from(json['teams']),
      teamInfo: (json['teamInfo'] as List<dynamic>)
          .map((item) => TeamInfo.fromJson(item))
          .toList(),
      seriesId: json['series_id'],
      fantasyEnabled: json['fantasyEnabled'],
      bbbEnabled: json['bbbEnabled'],
      hasSquad: json['hasSquad'],
      matchStarted: json['matchStarted'],
      matchEnded: json['matchEnded'],
    );
  }
}
