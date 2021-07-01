import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NotFoundBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text('Not Found.', style: TextStyle(fontWeight: FontWeight.bold))
      ])
    ]);
  }
}
