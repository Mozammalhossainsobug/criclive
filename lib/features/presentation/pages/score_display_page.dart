import 'package:criclive/features/domain/entites/scoreboard.dart';
import 'package:criclive/features/domain/entites/team_info.dart';
import 'package:criclive/features/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final Score score;
  final List<TeamInfo> team;

  const ScoreDisplay({required this.score, required this.team});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScoreCard(team[0].img,team[0].shortName, team[1].img, team[1].shortName, score.matchType, score.venue,score.dateTimeGMT.toString() ),
            ),
        ],
      ),
    );
  }
}
