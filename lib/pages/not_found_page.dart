import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_work_sample/components/organisms/drawer_body.dart';
import 'package:flutter_work_sample/components/organisms/not_found_body.dart';

class NotFoundPage extends HookWidget {
  final _title = 'App Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        drawer: DrawerBody(),
        body: NotFoundBody());
  }
}
