// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:flutter_work_sample/entities/itunes_result.dart';

class ItunesSearchListItem extends HookWidget {
  const ItunesSearchListItem({required this.itunesResult});

  final ItunesResult itunesResult;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Column(children: [
        Row(children: [
          Image.network(itunesResult.artworkUrl60),
          Expanded(
            child: Text(itunesResult.trackName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
        ]),
        Row(children: [Text(itunesResult.artistName)])
      ]),
    ]));
  }
}
