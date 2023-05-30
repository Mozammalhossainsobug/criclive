import 'dart:convert';
import 'package:criclive/features/data/models/score_model.dart';
import 'package:http/http.dart' as http;

class ScoreRemoteDataSource {
  final String url =
      "https://api.cricapi.com/v1/matches?apikey=ec7e028b-071b-4119-8e8f-eed4a04f8d6f&offset=0";

  Future<ScoreModel> getLatestScore() async {
    final response = await http.get(Uri.parse(url));
    print('came to score_remote_datasource');

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body)['data'];
      print(jsonList);
      List<ScoreModel> data = jsonList.map((i) => ScoreModel.fromJson(i)).toList();

      //print(data);
     // print('printing from response.statuscode');
      return data[0];
    } else {
      print('excetption');
      throw Exception('Failed to load matches');
    }
  }
}
