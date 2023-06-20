import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webplix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> toons = [];
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        toons.add(WebtoonModel.fromJson(webtoon));
      }
      return toons;
    }
    throw Error();
  }
}
