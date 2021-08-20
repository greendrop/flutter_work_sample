// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:routemaster/routemaster.dart';

class DrawerBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    void replaceRouteAppSearch() {
      Routemaster.of(context).replace('/');
    }

    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'iTunes Search',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        title: const Text('iTunes Search'),
        onTap: replaceRouteAppSearch,
      ),
    ]));
  }
}
