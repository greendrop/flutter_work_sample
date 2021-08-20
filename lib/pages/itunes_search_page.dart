// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:flutter_work_sample/components/organisms/drawer_body.dart';
import 'package:flutter_work_sample/components/organisms/itunes_search_body.dart';

class ItunesSearchPage extends HookWidget {
  final _title = 'iTunes Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        drawer: DrawerBody(),
        body: ItunesSearchBody());
  }
}
