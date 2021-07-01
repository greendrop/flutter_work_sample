import 'dart:convert';

import 'package:flutter_work_sample/entities/itunes_result.dart';
import 'package:http/http.dart' as http;

class ItunesSearchRepository {
  Future<List<ItunesResult>> search(
      {required String term, required String media}) async {
    final url =
        'https://itunes.apple.com/search?country=jp&lang=ja_jp&limit=20&media=$media&term=$term';
    final response = await http.get(Uri.parse(url));

    final apps = <ItunesResult>[];

    if (response.statusCode == 200) {
      final decoded = json.decode(response.body) as Map<String, dynamic>;
      for (final Map<String, dynamic> item in decoded['results']) {
        apps.add(ItunesResult(
            artistName: item['artistName'].toString(),
            artworkUrl60: item['artworkUrl60'].toString(),
            trackName: item['trackName'].toString()));
      }
      return apps;
    } else {
      throw Exception('HTTP Error status=${response.statusCode}');
    }
  }
}
